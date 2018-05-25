# Sonar Scanner

This image runs the sonar scanner

## Tags

- 3.2.0, 3.2.0.1227, latest
- 3.1.0, 3.1.0.1141
- 3.0.3, 3.0.3.778
- 3.0.2, 3.0.2.768
- 3.0.1, 3.0.1.733
- 3.0.0, 3.0.0.702
- 2.9.0, 2.9.0.670

## Running


### With Default parameters:

```
docker run -it --rm -v $PWD:/opt/src byjg/sonar-scanner
```

### Passing parameters

```
docker run -it --rm -v $PWD:/opt/src byjg/sonar-scanner \
    -Dsonar.projectKey=myproject -Dsonar.sources=./src1
```

