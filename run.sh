CUDA_VISIBLE_DEVICES=0 python3 run_summarization.py \
    --model_name_or_path /media/data/thanhnb/dataset1/bart_copy1/tmp/v2/checkpoint-70104 \
    --train_file '/media/data/thanhnb/dataset1/bart_copy/train_1.csv' \
    --validation_file '/media/data/thanhnb/dataset1/bart_copy/valid_1.csv' \
    --test_file '/media/data/thanhnb/dataset1/bart_copy/test_1.csv' \
    --text_column 'text' \
	--summary_column 'summary' \
    --per_device_train_batch_size=1 \
    --per_device_eval_batch_size=1 \
    --predict_with_generate \
    --overwrite_output_dir 1 \
    --num_train_epochs 3 \
    --save_strategy 'epoch' \
    --output_dir './tmp/v2' \
    --do_predict \
    # --do_train \
	# --do_eval \
    # --resume_from_checkpoint
        # --model_name_or_path facebook/bart-base \ bắt đầu giữ lại save từ 20000
    # --save_steps 500 \
