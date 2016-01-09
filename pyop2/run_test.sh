cd $SRC_DIR

py.test test --backend=sequential -v --tb=native
py.test test --backend=openmp -v --tb=native
