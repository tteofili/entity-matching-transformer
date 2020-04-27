#!/bin/bash
PYTHONPATH=$(pwd)


SEED=22
for c in 5 10 25 50 75 100
do
  # xlnet
  echo "YELLOW" "Start dirty_amazon_itunes xlnet"
  python3 src/run_training.py --cut=$c --model_type=xlnet --model_name_or_path=xlnet-base-cased --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> dai_xlnet.log

  echo "YELLOW" "Start abt_buy xlnet"
  python3 src/run_training.py --cut=$c --model_type=xlnet --model_name_or_path=xlnet-base-cased --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED} >> ab_xlnet.log

  echo "YELLOW" "Start dirty_walmart_amazon xlnet"
  python3 src/run_training.py --cut=$c --model_type=xlnet --model_name_or_path=xlnet-base-cased  --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED} >> dwai_xlnet.log

  echo "YELLOW" "Start dirty_dblp_acm xlnet"
  python3 src/run_training.py --cut=$c --model_type=xlnet --model_name_or_path=xlnet-base-cased  --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> dda_xlnet.log

  echo "YELLOW" "Start dirty_dblp_scholar xlnet"
  python3 src/run_training.py --cut=$c --model_type=xlnet --model_name_or_path=xlnet-base-cased  --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED} >> dds_xlnet.log

  echo "YELLOW" "Start amazon_google xlnet"
  python3 src/run_training.py --cut=$c --model_type=xlnet --model_name_or_path=xlnet-base-cased --data_processor=DeepMatcherProcessor --data_dir=amazon_google --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> az_xlnet.log


  # roBERTa
  echo "YELLOW" "Start dirty_amazon_itunes roBERTa"
  python3 src/run_training.py --cut=$c --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> dai_roberta.log

  echo "YELLOW" "Start abt_buy roBERTa"
  python3 src/run_training.py --cut=$c --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED} >> ab_roberta.log

  echo "YELLOW" "Start dirty_walmart_amazon roBERTa"
  python3 src/run_training.py --cut=$c --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED} >> dwa_roberta.log

  echo "YELLOW" "Start dirty_dblp_acm roBERTa"
  python3 src/run_training.py --cut=$c --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> dda_roberta.log

  echo "YELLOW" "Start dirty_dblp_scholar roBERTa"
  python3 src/run_training.py --cut=$c --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED} >> dds_roberta.log

  echo "YELLOW" "Start amazon_google roBERTa"
  python3 src/run_training.py --cut=$c --model_type=roberta --model_name_or_path=roberta-base --data_processor=DeepMatcherProcessor --data_dir=amazon_google --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> az_roberta.log

  # BERT
  echo "YELLOW" "Start dirty_amazon_itunes BERT"
  python3 src/run_training.py --cut=$c --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> dai_bert.log

  echo "YELLOW" "Start abt_buy BERT"
  python3 src/run_training.py --cut=$c --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED} >> at_bert.log

  echo "YELLOW" "Start dirty_walmart_amazon BERT"
  python3 src/run_training.py --cut=$c --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED} >> dwa_bert.log

  echo "YELLOW" "Start dirty_dblp_acm BERT"
  python3 src/run_training.py --cut=$c --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> dda_bert.log

  echo "YELLOW" "Start dirty_dblp_scholar BERT"
  python3 src/run_training.py --cut=$c  --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED} >> dds_bert.log

  echo "YELLOW" "Start amazon_google BERT"
  python3 src/run_training.py --cut=$c --model_type=bert --model_name_or_path=pre_trained_model/bert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=amazon_google --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> az_bert.log

  # DistilBERT
  echo "YELLOW" "Start dirty_amazon_itunes DistilBERT"
  python3 src/run_training.py --cut=$c --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_amazon_itunes --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> dai_distilbert.log

  echo "YELLOW" "Start abt_buy DistilBERT"
  python3 src/run_training.py --cut=$c --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=abt_buy --train_batch_size=16 --eval_batch_size=16 --max_seq_length=265 --num_epochs=15.0 --seed=${SEED} >> ab_distilbert.log

  echo "YELLOW" "Start dirty_walmart_amazon DistilBERT"
  python3 src/run_training.py --cut=$c --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_walmart_amazon --train_batch_size=16 --eval_batch_size=16 --max_seq_length=150 --num_epochs=15.0 --seed=${SEED} >> dwa_distilbert.log

  echo "YELLOW" "Start dirty_dblp_acm DistilBERT"
  python3 src/run_training.py --cut=$c --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_acm --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> dda_distilbert.log

  echo "YELLOW" "Start dirty_dblp_scholar DistilBERT"
  python3 src/run_training.py --cut=$c --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=dirty_dblp_scholar --train_batch_size=16 --eval_batch_size=16 --max_seq_length=128 --num_epochs=15.0 --seed=${SEED} >> dds_distilbert.log

  echo "YELLOW" "Start amazon_google DistilBERT"
  python3 src/run_training.py --cut=$c --model_type=distilbert --model_name_or_path=distilbert-base-uncased --data_processor=DeepMatcherProcessor --data_dir=amazon_google --train_batch_size=16 --eval_batch_size=16 --max_seq_length=180 --num_epochs=15.0 --seed=${SEED} >> az_distilbert.log


done
