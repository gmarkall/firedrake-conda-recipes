#!/bin/bash

cmake .  -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_SHARED_LIBS=ON
make
make install
