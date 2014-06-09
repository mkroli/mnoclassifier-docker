MnoClassifier Dockerfile
========================
**Dockerfile** for [trusted build](https://index.docker.io/u/mkroli/mnoclassifier/) of [MnoClassifier].

The MnoClassifier frontend listens internally on port **8080**.


Usage
-----
With default parameters:
```
docker run -d -p 8080:8080 --name mnoclassifier mkroli/mnoclassifier
```

[MnoClassifier]:https://github.com/mkroli/mnoclassifier
