#!/bin/bash

mkdir -p $PREFIX/bin $PREFIX/include $PREFIX/lib $PREFIX/share

cp $RECIPE_DIR/libaio.so.1.0.1 $PREFIX/lib

mv ./bin/* $PREFIX/bin/
mv ./scripts/* $PREFIX/bin/
mv ./include/* $PREFIX/include/
mv ./lib/* $PREFIX/lib/
mv ./share/* $PREFIX/share/ 

cd $PREFIX/lib
ln -s libaio.so.1.0.1 libaio.so.1

