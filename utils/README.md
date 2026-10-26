# Fortran utilities

Small examples used by the other programs:

- `comp_utils.f90` defines a module with a `linspace` subroutine and a few
  constants. It also contains a short test program.
- `matrix_io.f90` reads a matrix from `matrix.txt` and writes it to
  `matrix.out`.
- `matrix.txt` is the sample input.

## Compile

```bash
gfortran comp_utils.f90 -o comp_utils
gfortran matrix_io.f90 -o matrix_io
```
