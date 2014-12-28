#!/bin/bash

export PETSC_CONFIGURE_OPTIONS="--download-ctetgen --download-triangle --download-chaco"
python setup.py install
