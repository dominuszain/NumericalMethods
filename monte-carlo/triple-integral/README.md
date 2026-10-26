# Triple integral

`main.sce` estimates

```
∫∫∫ sin(x y z) dz dy dx
```

over `x ∈ [-1, 2]`, `y ∈ [0, 1]`, and `z ∈ [-5, 6]` with 10 million random
points. The volume factor multiplies the mean of the sampled function values.
The integrand and the computed answer are shown in `integral.png` and
`answer.png`.

This example shows how little the Monte Carlo code changes when the dimension
increases.

## Run

Open `main.sce` in Scilab and execute it. The run uses a large sample, so it
takes a few seconds.
