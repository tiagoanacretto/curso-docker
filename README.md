# Docker examples

Exemplos do uso do docker retirados do curso: https://www.udemy.com/course/curso-docker/

## 01-primeira-build

Imagem baseada em um servidor NGINX. Primeiro exemplo de uso de Dockerfile

## 02-build-com-arg

Dockerfile recebendo argumento durante a build

```
docker image build --build-arg S3_BUCKET='qualquer valor' -t ex-build-arg .
```

## 03-build-com-copy

Dockerfile usando o comando COPY

```
docker image build -t ex-build-copy .
docker run -p 80:80 ex-build-copy
```

## 04-build-dev

Criação de um server em Python, expondo o log para um container externo

```
docker image build -t ex-build-dev .
docker container run -it -v $(pwd):/app -p 80:8000 --name python-server ex-build-dev
docker run -it --volumes-from=python-server debian cat /log/http-server.log
```

## 05-node-mongo-compose

Exemplo de compose usando 3 containers: um com mongo, um com node-js para backend e um com nginx para frontend.

Comandos para configuração do projeto:

```
cd backend
npm init -y
npm i --save express@4.15.3 mongoose@4.11.1 node-restful@0.2.6 body-parser@1.17.2 cors@2.8.3
rm -rf node_modules
```

Para iniciar o Docker Compose:

```
docker-compose up
```