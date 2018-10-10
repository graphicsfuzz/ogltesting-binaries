#!/bin/bash
set -x
set -e
set -u


# ANGLE (shader translator and libs for get-image-glsl (EGL version): EGL, libGLESv2)

curl \
  -fsSL \
  -o angle-Darwin-x64-Release.zip \
  https://github.com/paulthomson/build-angle/releases/download/v-592879ad24e66c7c68c3a06d4e2227630520da36/Darwin-x64-Release.zip

curl \
  -fsSL \
  -o angle-Linux-x64-Release.zip \
  https://github.com/paulthomson/build-angle/releases/download/v-592879ad24e66c7c68c3a06d4e2227630520da36/Linux-x64-Release.zip

curl \
  -fsSL \
  -o angle-MSVC2015-x64-Release.zip \
  https://github.com/paulthomson/build-angle/releases/download/v-592879ad24e66c7c68c3a06d4e2227630520da36/MSVC2015-Release-x64.zip # <-inconsistent

# Swiftshader (software rendering libs for for get-image-glsl (EGL version): EGL, libGLESv2)

curl \
  -fsSL \
  -o swiftshader-Linux-x64-Release.zip \
  https://github.com/paulthomson/build-swiftshader/releases/download/v-908da3d6571b6df58f34c6ad1160826bda3ee9de/Linux-x64-Release-build.zip

curl \
  -fsSL \
  -o swiftshader-MSVC2015-x64-Release.zip \
  https://github.com/paulthomson/build-swiftshader/releases/download/v-723a7b9edf3a5060af1616c06f09d06a69efab16/MSVC2015-x64-Release-build.zip

curl \
  -fsSL \
  -o swiftshader-Darwin-x64-Release.zip \
  https://github.com/paulthomson/build-swiftshader/releases/download/v-723a7b9edf3a5060af1616c06f09d06a69efab16/Darwin-x64-Release-build.zip

# glslang

curl \
  -fsSL \
  -o glslang-Darwin-x64-Release.zip \
  https://github.com/paulthomson/build-glslang/releases/download/v-14f471c0eacf9ad88240f37680a818052474e50b/Darwin-x64-Release.zip

curl \
  -fsSL \
  -o glslang-Linux-x64-Release.zip \
  https://github.com/paulthomson/build-glslang/releases/download/v-14f471c0eacf9ad88240f37680a818052474e50b/Linux-x64-Release.zip

curl \
  -fsSL \
  -o glslang-MSVC2015-x64-Release.zip \
  https://github.com/paulthomson/build-glslang/releases/download/v-14f471c0eacf9ad88240f37680a818052474e50b/MSVC2015-x64-Release.zip

# thrift (we don't need thrift; we have another repo for thrift since it is only needed at compile time)


# get-image-glsl

curl \
  -fsSL \
  -o get-image-glsl-Darwin-x64-Release.zip \
  https://github.com/graphicsfuzz/get-image-glsl/releases/download/v-b03b7af6c0d828d004666917cd1a4edbc4335ddd/Darwin-x64-Release.zip

curl \
  -fsSL \
  -o get-image-glsl-Linux-x64-Release.zip \
  https://github.com/graphicsfuzz/get-image-glsl/releases/download/v-b03b7af6c0d828d004666917cd1a4edbc4335ddd/Linux-x64-Release.zip

curl \
  -fsSL \
  -o get-image-glsl-MSVC2015-x64-Release.zip \
  https://github.com/graphicsfuzz/get-image-glsl/releases/download/v-b03b7af6c0d828d004666917cd1a4edbc4335ddd/MSVC2015-x64-Release.zip

# spirv-tools

curl \
  -fsSL \
  -o spirv-tools-Darwin-x64-Release.zip \
  https://github.com/paulthomson/build-SPIRV-Tools/releases/download/v-2dc1a3a5a9dd33114e3d73fdf51448954d44217b/Darwin-x64-Debug.zip

curl \
  -fsSL \
  -o spirv-tools-Linux-x64-Release.zip \
  https://github.com/paulthomson/build-SPIRV-Tools/releases/download/v-2dc1a3a5a9dd33114e3d73fdf51448954d44217b/Linux-x64-Debug.zip

curl \
  -fsSL \
  -o spirv-tools-MSVC2015-x64-Release.zip \
  https://github.com/paulthomson/build-SPIRV-Tools/releases/download/v-2dc1a3a5a9dd33114e3d73fdf51448954d44217b/MSVC2015-x64-Debug.zip
