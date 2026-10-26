# 1D heat equation

`main.sce` solves the heat equation

```
∂u/∂t = a² ∂²u/∂x²
```

on a 100-point grid with an explicit finite-difference update. The initial
condition is a Gaussian centred at `x = 5`, and the boundaries are held at zero.
The script plots the profile every 100 time steps.

The update is stable only when

```
a² Δt / Δx² ≤ 1/2
```

so adjust `delt`, `delx`, or `a` together. The report is `main.pdf`, and
`heat_equation.mp4` shows the evolution.

## Run

Open `main.sce` in Scilab and execute it.
