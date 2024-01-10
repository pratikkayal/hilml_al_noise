#!/bin/bash

NOISE=$1

CUDA_VISIBLE_DEVICES=1 python train_al.py --cfg=../configs/cifar10/al/RESNET18_noisy.yaml --al=entropy --exp-name=ENT_1 --noise=$NOISE > /dev/null 2>&1 &
CUDA_VISIBLE_DEVICES=1 python train_al.py --cfg=../configs/cifar10/al/RESNET18_noisy.yaml --al=margin --exp-name=MAR_1 --noise=$NOISE > /dev/null 2>&1 &
CUDA_VISIBLE_DEVICES=1 python train_al.py --cfg=../configs/cifar10/al/RESNET18_noisy.yaml --al=bald --exp-name=BALD_1 --noise=$NOISE > /dev/null 2>&1 &
CUDA_VISIBLE_DEVICES=1 python train_al.py --cfg=../configs/cifar10/al/RESNET18_noisy.yaml --al=vaal --exp-name=VAAL_1 --noise=$NOISE > /dev/null 2>&1 &
CUDA_VISIBLE_DEVICES=1 python train_al.py --cfg=../configs/cifar10/al/RESNET18_noisy.yaml --al=coreset --exp-name=CORESET_1 --noise=$NOISE > /dev/null 2>&1 &
CUDA_VISIBLE_DEVICES=1 python train_al.py --cfg=../configs/cifar10/al/RESNET18_noisy.yaml --al=random --exp-name=RANDOM_1 --noise=$NOISE > /dev/null 2>&1 &
CUDA_VISIBLE_DEVICES=1 python train_al.py --cfg=../configs/cifar10/al/RESNET18_noisy.yaml --al=dbal --exp-name=DBAL_1 --noise=$NOISE > /dev/null 2>&1 &

wait