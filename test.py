import os
import glob
import time
from datetime import datetime
import torch
import numpy as np
from PPO import PPO
from Pendulum_v3_mirror import *  # added by Ben
import matplotlib.pyplot as plt
import argparse


def transient_response(eval_env, state_action_log):
    #print(np.shape(state_action_log)[0])
    fig, axs = plt.subplots(4)
    fig.suptitle('SAC Transient Response')
    t = np.arange(0, eval_env.dt*np.shape(state_action_log)[0], eval_env.dt)
    axs[0].plot(t[1:], state_action_log[1:,0])
    axs[3].plot(t[1:], state_action_log[1:,1])
    axs[1].plot(t[1:], state_action_log[1:,2])
    axs[2].plot(t[1:], state_action_log[1:,3]*eval_env.max_torque)
    axs[0].set_ylabel('q1(rad)')
    axs[1].set_ylabel('q2 dot(rad/s)')
    axs[2].set_ylabel('torque(Nm)')
    axs[3].set_ylabel('q1 dot(rad/s)')
    axs[2].set_xlabel('time(s)')
    #axs[0].set_ylim([-0.01,0.06])
    #axs[0].set_ylim([-pi-0.5,pi+0.5])
    axs[1].set_ylim([-34,34])
    #axs[2].set_ylim([-12,12])
    plt.show()

    print("e_ss=",state_action_log[-1,0])
    print("u_ss=",state_action_log[-1,3]*eval_env.max_torque)
    print("q1_min=",min(state_action_log[1:,0]))
    print("q1_min_index=",np.argmin(state_action_log[1:,0]))
    print("OS%=",min(state_action_log[1:,0])/(eval_env.ang*pi/180))
    print("q1_a=", eval_env.ang*pi/180 * 0.9)
    print("q1_b=", eval_env.ang*pi/180 * 0.1)
    print("q1_c=", eval_env.ang*pi/180 * 0.1)
    print("q1_d=", -eval_env.ang*pi/180 * 0.1)
    min_a = 100
    min_b = 100
    min_c = 100
    min_d = 100
    t_a = 100
    t_b = 100
    t_c = 100
    t_d = 100
    for i in range(1,np.shape(state_action_log)[0]):
        tr_a = eval_env.ang*pi/180 * 0.9
        tr_b = eval_env.ang*pi/180 * 0.1
        tr_c = eval_env.ang*pi/180 * 0.1
        tr_d = -eval_env.ang*pi/180 * 0.1
        diff_a = abs(state_action_log[i,0] - tr_a)
        diff_b = abs(state_action_log[i,0] - tr_b)
        diff_c = abs(state_action_log[i,0] - tr_c)
        diff_d = abs(state_action_log[i,0] - tr_d)
        if diff_a < min_a:
            min_a = diff_a
            t_a = i * eval_env.dt
        if diff_b < min_b:
            min_b = diff_b
            t_b = i * eval_env.dt
        if diff_c < min_c:
            min_c = diff_c
            t_c = i * eval_env.dt
        if diff_d < min_d:
            min_d = diff_d
            t_d = i * eval_env.dt
    print("[min_a, t_a, min_b, t_b]=",[min_a, t_a, min_b, t_b])
    print("rising time=",t_b-t_a)
    print("[min_c, t_c, min_d, t_d]=",[min_c, t_c, min_d, t_d])
    print("settling time=",t_c,"or",t_d)


#################################### Testing ###################################
def test():
    print("============================================================================================")

    ################## hyperparameters ##################

    # env_name = "CartPole-v1"
    # has_continuous_action_space = False
    # max_ep_len = 400
    # action_std = None

    # env_name = "LunarLander-v2"
    # has_continuous_action_space = False
    # max_ep_len = 300
    # action_std = None

    # env_name = "BipedalWalker-v2"
    # has_continuous_action_space = True
    # max_ep_len = 1500           # max timesteps in one episode
    # action_std = 0.1            # set same std for action distribution which was used while saving

    #env_name = "RoboschoolWalker2d-v1"
    env_name = "rwip"
    has_continuous_action_space = True
    max_ep_len = 1000           # max timesteps in one episode
    action_std = 0.1            # set same std for action distribution which was used while saving

    render = True              # render environment on screen
    frame_delay = 0             # if required; add delay b/w frames

    total_test_episodes = 10    # total num of testing episodes

    K_epochs = 80               # update policy for K epochs
    eps_clip = 0.2              # clip parameter for PPO
    gamma = 0.99                # discount factor

    lr_actor = 0.0003           # learning rate for actor
    lr_critic = 0.001           # learning rate for critic

    #####################################################

    #env = gym.make(env_name)
    env = Pendulum(1)

    # state space dimension
    state_dim = env.observation_space.shape[0]

    # action space dimension
    if has_continuous_action_space:
        action_dim = env.action_space.shape[0]
    else:
        action_dim = env.action_space.n

    # initialize a PPO agent
    ppo_agent = PPO(state_dim, action_dim, lr_actor, lr_critic, gamma, K_epochs, eps_clip, has_continuous_action_space, action_std)

    # preTrained weights directory

    random_seed = 0             #### set this to load a particular checkpoint trained on random seed
    run_num_pretrained = 0      #### set this to load a particular checkpoint num

    directory = "PPO_preTrained" + '/' + env_name + '/'
    checkpoint_path = directory + "PPO_{}_{}_{}.pth".format(env_name, random_seed, run_num_pretrained)
    print("loading network from : " + checkpoint_path)

    ppo_agent.load(checkpoint_path)

    print("--------------------------------------------------------------------------------------------")

    test_running_reward = 0

    for ep in range(1, total_test_episodes+1):
        ep_reward = 0
        state = env.reset("not_None")

        state_action_log = np.zeros((1,4))

        for t in range(1, max_ep_len+1):
            action = ppo_agent.select_action(state)
            state, reward, done, _ = env.step(action)
            ep_reward += reward

            state_action = np.append(state, action[0])
            state_action_log = np.concatenate((state_action_log,np.asmatrix(state_action)),axis=0)

            if render:
                env.render(ep)
                time.sleep(frame_delay)

            if done:
                break

        transient_response(env, state_action_log)

        # clear buffer
        ppo_agent.buffer.clear()

        test_running_reward +=  ep_reward
        print('Episode: {} \t\t Reward: {}'.format(ep, round(ep_reward, 2)))
        ep_reward = 0

    env.close()

    print("============================================================================================")

    avg_test_reward = test_running_reward / total_test_episodes
    avg_test_reward = round(avg_test_reward, 2)
    print("average test reward : " + str(avg_test_reward))

    print("============================================================================================")


if __name__ == '__main__':

    test()
