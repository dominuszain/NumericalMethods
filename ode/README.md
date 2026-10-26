# Damped harmonic oscillator

`main.f90` integrates the damped harmonic oscillator

```
m x'' + b x' + k x = 0
```

with the explicit Euler method, using `b = 1`, `m = 1`, `k = 4`, `x(0) = 1`, and
`v(0) = 0`. The time step is `0.001` and the run covers 10,000 steps.

The program writes `out.txt` with two columns: time and displacement. The plot
`graph.png` shows the result. The report is `main.pdf`.

## Run

```bash
gfortran main.f90 -o oscillator
./oscillator
```
