MODEL_DIR="${HOME}/im2txt/model"

# Run a TensorBoard server.
nohup tensorboard --logdir="${MODEL_DIR}" &
