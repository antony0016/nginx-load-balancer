# load balancer

## Step

1. Build the docker image
2. Run docker compose to start the load balancer architecture
3. Access the load balancer

## Build the docker image

```bash
docker build -t simple-app .
```

## Run docker compose

```bash
docker-compose up
```

## Access the load balancer

use curl to access the load balancer or open the browser and access the url <http://localhost>

```bash
curl http://localhost
# Hello, I'm 53e434b4261d:8001
# or 
# Hello, I'm 53e434b4261d:8002
```
