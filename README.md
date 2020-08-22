# Express with Nodemon. 
![Docker Image CI](https://github.com/iamapinan/Expressjs-with-nodemon/workflows/Docker%20Image%20CI/badge.svg?branch=master)


### About this repo
- Build with node-alpine
- Working directory `/usr/src/app`
- Port `3000`
- Environment `STARTMODE=dev` to run under nodemon environment.

### Environments
- `dev` run express app with nodemon.
- `production` run express app without nodemon. 

### To run with docker run
`docker run --name my-api -d --rm --env STARTMODE=dev -p 3000:3000 iamapinan/expressjs-with-nodemon:latest`

### Docker Compose
```
version: '3'

services:
    api:
        image: iamapinan/expressjs-with-nodemon:latest
        restart: always
        environment: 
            STARTMODE=production
        ports: 
            - 3000:3000
```

### Contributed by
- Apinan Woratrakun iamapinan@gmail.com
