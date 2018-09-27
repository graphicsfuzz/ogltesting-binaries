#!/bin/bash
set -x
set -e
set -u

mkdir -p bin/Windows/angle
mkdir -p bin/Linux/angle
mkdir -p bin/Mac/angle

mkdir -p bin/Windows/swiftshader
mkdir -p bin/Linux/swiftshader
mkdir -p bin/Mac/swiftshader

cp angle-Darwin-x64-Release/shader_translator bin/Mac/
cp angle-Darwin-x64-Release/libEGL.dylib angle-Darwin-x64-Release/libGLESv2.dylib bin/Mac/angle/

cp angle-Linux-x64-Release/shader_translator bin/Linux/
cp angle-Linux-x64-Release/lib/libEGL.so angle-Linux-x64-Release/lib/libGLESv2.so bin/Linux/angle/

cp angle-MSVC2015-x64-Release/shader_translator.exe bin/Windows
cp angle-MSVC2015-x64-Release/libEGL.dll \
   angle-MSVC2015-x64-Release/libGLESv2.dll \
   angle-MSVC2015-x64-Release/lib/libEGL.lib \
   angle-MSVC2015-x64-Release/lib/libGLESv2.lib \
   bin/Windows/angle/

cp get-image-glsl-Darwin-x64-Release/bin/*glfw* bin/Mac/
cp get-image-glsl-Darwin-x64-Release/bin/*egl* bin/Mac/swiftshader/

cp get-image-glsl-Linux-x64-Release/bin/*glfw* bin/Linux/
cp get-image-glsl-Linux-x64-Release/bin/*egl* bin/Linux/swiftshader/

cp get-image-glsl-MSVC2015-x64-Release/bin/*glfw* bin/Windows/
cp get-image-glsl-MSVC2015-x64-Release/bin/*egl* bin/Windows/swiftshader/

cp glslang-Darwin-x64-Release/bin/glslangValidator bin/Mac/
cp glslang-Linux-x64-Release/bin/glslangValidator bin/Linux/
cp glslang-MSVC2015-x64-Release/bin/glslangValidator.exe bin/Windows/

cp swiftshader-Darwin-x64-Release/* bin/Mac/swiftshader
cp swiftshader-Linux-x64-Release/* bin/Linux/swiftshader
cp swiftshader-MSVC2015-x64-Release/*.dll swiftshader-MSVC2015-x64-Release/*.lib bin/Windows/swiftshader

# We handle thrift in a separate repo (thrift-compiler-binary) since it is only needed at compile time.
#cp thrift-Darwin-x64-Release/bin/* bin/Mac/
#cp thrift-Linux-x64-Release/bin/* bin/Linux/
#cp thrift-MSVC2015-x64-Release/bin/* bin/Windows/


