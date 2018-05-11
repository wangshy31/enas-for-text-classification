#!/bin/bash

export PYTHONPATH="$(pwd)"

python src/textcls/main.py \
  --data_format="NCHW" \
  --search_for="micro" \
  --reset_output_dir \
  --data_path="/home/wangshiyao/Documents/workspace/ijcai18/data/agnews/" \
  --num_words=96 \
  --output_dir="textcls/agnews/tmp" \
  --batch_size=256 \
  --num_epochs=64 \
  --log_every=50 \
  --eval_every_epochs=1 \
  --child_use_aux_heads \
  --child_num_layers=4 \
  --child_out_filters=16 \
  --child_l2_reg=1e-4 \
  --child_num_branches=5 \
  --child_num_cells=3 \
  --child_keep_prob=0.90 \
  --child_drop_path_keep_prob=0.60 \
  --child_lr_cosine \
  --child_lr_max=0.05 \
  --child_lr_min=0.0005 \
  --child_lr_T_0=10 \
  --child_lr_T_mul=2 \
  --controller_training \
  --controller_search_whole_channels \
  --controller_entropy_weight=0.0001 \
  --controller_train_every=1 \
  --controller_sync_replicas \
  --controller_num_aggregate=10 \
  --controller_train_steps=30 \
  --controller_lr=0.0035 \
  --controller_tanh_constant=1.10 \
  --controller_op_tanh_reduce=2.5 \
  "$@"

