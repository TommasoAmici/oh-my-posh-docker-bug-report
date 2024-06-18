# oh-my-posh in Docker

```sh
docker build -t omp .
docker run --rm -it omp
```

## Expectation

No paddings when running outside of Docker:

![screenshot of expected behavior](expected.png)

## Reality

Running in Docker has these extra paddings:

![screenshot of problem](problem.png)
