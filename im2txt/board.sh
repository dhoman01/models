MODEL_DIR="${HOME}/im2txt/model"

export CUDA_VISIBLE_DEVICES=""

# Run a TensorBoard server.
nohup tensorboard --logdir="${MODEL_DIR}" &
