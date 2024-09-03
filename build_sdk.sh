#! /usr/bin/env bash

REPO_DIR=opencv

PROJECT_BUILDER_DIR=$PWD

# export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK="$ANDROID_HOME"
export ANDROID_NDK_HOME="$ANDROID_HOME/ndk/25.2.9519653"
export ANDROID_NATIVE_API_LEVEL=21
# export ANDROID_COMPILE_SDK_VERSION=
# export ANDROID_TARGET_SDK_VERSION=

YOUR_OPENCV_SRC_FOLDER=$PROJECT_BUILDER_DIR/$REPO_DIR
YOUR_OPENCV_BUILD_FOLDER=$PROJECT_BUILDER_DIR/output

python3 $YOUR_OPENCV_SRC_FOLDER/platforms/android/build_sdk.py \
    $YOUR_OPENCV_BUILD_FOLDER $YOUR_OPENCV_SRC_FOLDER \
    --ndk_path $ANDROID_NDK_HOME \
    --sdk_path $ANDROID_SDK \
    --config $PROJECT_BUILDER_DIR/ndk-25-cpp-static-config.py \
    --use_android_buildtools \
    --no_samples_build
