# recipe-app-api
Recipe API project

## Build with Dockerfile

```bash
sudo docker build --network=host .
```

## Build with Docker Compose
```bash
sudo docker-compose build
```

## Run flake8
```bash
sudo docker-compose run --rm app sh -c "flake8
```
