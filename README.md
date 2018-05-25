# Sonar Scanner

This image runs the sonar scanner

## Running


With Default parameters:

```
docker run -it --rm -v $PWD:/opt/src byjg/sonar-scanner
```

Passing parameters

```
docker run -it --rm -v $PWD:/opt/src byjg/sonar-scanner \
    -Dsonar.projectKey=myproject -Dsonar.sources=./src1
```

