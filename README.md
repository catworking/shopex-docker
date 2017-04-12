# shopex-docker
### BBC v3.0.35
```bash
cd bbc/3.0.35
docker build --rm -t shopex-bbc-3.0.35 .
docker run -ti --privileged --name shopex-bbc-3.0.35 -v C:/Users/figo-007/PhpstromProjects/shopex-docker/bbc/3.0.35/web-root:/data/httpd/b2b2c -p 8880:80 -p 3308:3306 shopex-bbc-3.0.35
```

### ECStore v2.4.1
```bash
cd ecstore/2.4.1
docker build --rm -t shopex-ecstore-2.4.1 .
docker run -ti --privileged --name shopex-ecstore-2.4.1 -v C:/Users/figo-007/PhpstromProjects/shopex-docker/ecstore/2.4.1/web-root:/data/httpd/web-root -p 80:80 -p 3309:3306 shopex-ecstore-2.4.1
```