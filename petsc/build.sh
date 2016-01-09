#!/bin/bash

export LIBRARY_PATH=$PREFIX/lib

# See https://github.com/ContinuumIO/anaconda-issues/issues/613
ln -s $PREFIX/bin/gfortran $PREFIX/bin/f95

./configure --prefix=$PREFIX \
  --download-triangle \
  --download-chaco \
  --with-lapack-lib=libopenblas.so \
  --with-blas-lib=libopenblas.so \
  --with-shared-libraries

make
make install
