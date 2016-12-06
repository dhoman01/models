# Location to save the MSCOCO data.
DATA_DIR="${HOME}/im2txt/data_dir"

# Build the preprocessing script.
bazel build im2txt/download_im2latex

# Run the preprocessing script.
bazel-bin/im2txt/download_im2latex "${DATA_DIR}"
