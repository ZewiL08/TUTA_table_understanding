#!/bin/bash

export dataset_dir="/data/cell-type-classification"
export tuta_model_dir="tuta_pretrained"

python ctc_finetune.py                                           \
--folds_path="${dataset_dir}/folds_deex5.json"                    \
--flat_json_path="${dataset_dir}/deex.jl"                            \
--hier_dir="${dataset_dir}/deex"                            \
--pretrained_model_path="${tuta_model_dir}/tuta.bin"             \
--output_model_path="${tuta_model_dir}/tuta-ctc.bin"              \
--target="tuta"                                                   \
--device_id=0                                                   \
--batch_size=2                                                   \
--max_seq_len=512                                                 \
--max_cell_num=256                                                 \
--epochs_num=40                                                   \
--attention_distance=2                                             