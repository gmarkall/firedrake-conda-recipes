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
