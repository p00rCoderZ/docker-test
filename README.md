# docker-test

### To build both containers use
```
docker-compose up -d
```

### To attach to api container
```
docker attach api
```

### To rebuild images
```
docker-compose build
```

### To take down created containers
```
docker-compose down
```

## To test jwt authentication
Create jwt token with 'serial' key and standard algorithm

Then create POST request at / endpoint and include that jwt