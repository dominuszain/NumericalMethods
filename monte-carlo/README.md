# Monte Carlo integration

`main.sce` estimates

```
∫₀^π sin(x) dx
```

by drawing `n = 100` uniform samples and averaging the function values. The
estimate is `(b - a) / n × Σ f(xᵢ)`. The result converges as `1/√n`, so the value
changes between runs.

`simple_integral.png` shows the sampled points, `graph.png` shows a larger run,
and `main.pdf` is the write-up. The `triple-integral/` folder extends the same
idea to three dimensions.

## Run

Open `main.sce` in Scilab and execute it.
