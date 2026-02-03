#!/usr/bin/env bash
# exit on error
set -o errexit

STORAGE_DIR=/opt/render/project/src/persistent

# Install Python Requirements
pip install -r requirements.txt

# Create folder for FFmpeg
mkdir -p ffmpeg

# Download FFmpeg
echo "Downloading FFmpeg..."
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz

# Extract FFmpeg
echo "Extracting FFmpeg..."
tar xvf ffmpeg-release-amd64-static.tar.xz --strip-components=1 -C ffmpeg

# Clean up zip file
rm ffmpeg-release-amd64-static.tar.xz

# Add to PATH (Temporary for build)
export PATH=$PATH:/opt/render/project/src/ffmpeg