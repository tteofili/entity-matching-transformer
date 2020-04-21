#!/bin/bash
PYTHONPATH=$(pwd)

cecho(){
    RED="\033[0;31m"
    GREEN="\033[0;32m"
    YELLOW="\033[1;33m"
    # ... ADD MORE COLORS
    NC="\033[0m" # No Color

    printf "${!1}${2} ${NC}\n"
}

SEED=22

# xlnet
cecho "YELLOW" "Start dirty_amazon_itunes xlnet"
python3 src/run_training.py --model_type=xlnet --model_name_or_path=xlnet-base-cased --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start abt_buy xlnet"
python3 src/run_training.py --model_type=xlnet --model_name_or_path=xlnet-base-cased --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_walmart_amazon xlnet"
python3 src/run_training.py --model_type=xlnet --model_name_or_path=xlnet-base-cased  --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_dblp_acm xlnet"
python3 src/run_training.py --model_type=xlnet --model_name_or_path=xlnet-base-cased  --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_dblp_scholar xlnet"
python3 src/run_training.py --model_type=xlnet --model_name_or_path=xlnet-base-cased  --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED}


# roBERTa
cecho "YELLOW" "Start dirty_amazon_itunes roBERTa"
python3 src/run_training.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start abt_buy roBERTa"
python3 src/run_training.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_walmart_amazon roBERTa"
python3 src/run_training.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_dblp_acm roBERTa"
python3 src/run_training.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_dblp_scholar roBERTa"
python3 src/run_training.py --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED}


##XLM
#cecho "YELLOW" "Start dirty_amazon_itunes XLM"
#python ~/PA2/src/run_training.py --model_type=xlm --model_name_or_path=xlm-mlm-ende-1024 --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}
#
#cecho "YELLOW" "Start abt_buy XLM"
#python ~/PA2/src/run_training.py --model_type=xlm --model_name_or_path=xlm-mlm-ende-1024 --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED}
#
#cecho "YELLOW" "Start dirty_walmart_amazon XLM"
#python ~/PA2/src/run_training.py --model_type=xlm --model_name_or_path=xlm-mlm-ende-1024 --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED}
#
#cecho "YELLOW" "Start dirty_dblp_acm XLM"
#python ~/PA2/src/run_training.py --model_type=xlm --model_name_or_path=xlm-mlm-ende-1024 --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}
#
#cecho "YELLOW" "Start dirty_dblp_scholar XLM"
#python ~/PA2/src/run_training.py --model_type=xlm --model_name_or_path=xlm-mlm-ende-1024 --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED}


# BERT
cecho "YELLOW" "Start dirty_amazon_itunes BERT"
python3 src/run_training.py --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start abt_buy BERT"
python3 src/run_training.py --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_walmart_amazon BERT"
python3 src/run_training.py --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_dblp_acm BERT"
python3 src/run_training.py --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_dblp_scholar BERT"
python3 src/run_training.py --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED}

# DistilBERT
cecho "YELLOW" "Start dirty_amazon_itunes DistilBERT"
python3 src/run_training.py --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start abt_buy DistilBERT"
python3 src/run_training.py --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_walmart_amazon DistilBERT"
python3 src/run_training.py --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_dblp_acm DistilBERT"
python3 src/run_training.py --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED}

cecho "YELLOW" "Start dirty_dblp_scholar DistilBERT"
python3 src/run_training.py --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED}
