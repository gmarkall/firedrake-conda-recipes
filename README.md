Firedrake Project Conda Recipes
===============================

This repository contains a set of (work-in-progress) conda recipes for The
Firedrake Project.

The goal is to create a set of conda packages that allow the easy installation
of a fully-functioning build of the Firedrake PDE solver.

Current status
--------------

Recipes for building PyOP2 and its dependencies have been created.

It is currently possible to build and install these packages on linux-64, but

```python
from pyop2 import op2
```

does not work:

```
>>> from pyop2 import op2
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/home/gmarkall/miniconda/envs/pyop2package/lib/python2.7/site-packages/pyop2/__init__.py", line 9, in <module>
    from op2 import *
  File "/home/gmarkall/miniconda/envs/pyop2package/lib/python2.7/site-packages/pyop2/op2.py", line 39, in <module>
    import base
  File "/home/gmarkall/miniconda/envs/pyop2package/lib/python2.7/site-packages/pyop2/base.py", line 54, in <module>
    from sparsity import build_sparsity
ImportError: libpetsc.so.3.05: cannot open shared object file: No such file or directory
```

This is likely due to some failure in the process of setting RPATH for some
shared object at installation time.

Notes
-----

- Presently PETSc and PyOP2 depend on the mpi4py conda package, which uses mpich2.
- LAPACK 3.5.0 with its embedded BLAS is used at the moment - this is likely to
  be slow. It should be possible to use ATLAS or possibly MKL, but this basic
  setup is used until correct functionality is obtained.
- Recipes for PETSc and PETSc4py point to a local tarball at the moment, due to
  the slowness of the clone from Bitbucket. This could be remedied if there is a
  way to perform a shallow clone for a conda build.
- Building and testing is presently done on a Debian 7.6.0 machine, but moving
  to using Binstar Build would be desirable.
- All building/testing is being done with Python 2.7 initially.

Juanlu TODO
-----------

Friday:
- Start from the bottom and build incrementally
- Study the situation of conda mpi4py (mine?), which apparently uses mpich2
- Use OpenBLAS

Saturday:
- Make PETSc and petsc4py work
- Bring extra FEniCS requirements and add +mapdes version
- Consider rlink fixes

Sunday:
- Make PyOP2 work
- Make Firedrake work
- Bring everything to Anaconda Server
- You have until January 11th 00:00
