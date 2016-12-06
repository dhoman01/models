# Directory containing preprocessed MSCOCO data.
DATA_DIR="${HOME}/im2latex/data_dir/"

# Inception v3 checkpoint file.
INCEPTION_CHECKPOINT="${HOME}/inception/inception_v3.ckpt"

# Directory to save the model.
MODEL_DIR="${HOME}/im2txt/model"

# Build the model.
bazel build -c opt im2txt/...

# Run the training script.
nohup bazel-bin/im2txt/train \
  --input_file_pattern="${DATA_DIR}/train-?????-of-00256" \
  --inception_checkpoint_file="${INCEPTION_CHECKPOINT}" \
  --train_dir="${MODEL_DIR}/train" \
  --train_inception=true \
  --number_of_steps=20000 > train.log 1>&2 &
