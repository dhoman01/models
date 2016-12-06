MODEL_DIR="${HOME}/im2txt/model"

# Run a TensorBoard server.
nohub tensorboard --logdir="${MODEL_DIR}" &
