data {
    int<lower=1> N;
    vector[N] y;
    real<lower=0> sigma;
}
parameters {
    real mu;
}
model {
    y ~ normal(mu, sigma);
}

