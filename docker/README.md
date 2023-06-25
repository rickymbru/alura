# Curso Docker cirando e gerenciando containers
    Curso Docker cirando e gerenciando containers
    [Link](https://cursos.alura.com.br/course/docker-criando-gerenciando-containers/)
## Indice
- [Conhecendo o Docker?](#conhecendo-o-docker)
- [Os primeiros comandos](#os-primeiros-comandos)
- [Criando e compreendendo imagens](#criando-e-compreendendo-imagens)
- [Persistindo dados](#persistindo-dados)

## Conhecendo o Docker?
```
docker run ubuntu
```
## Os primeiros comandos
***
### Fluxo da criação de containers
```
docker ps –a
docker run ubuntu sleep 1d
```
### Outros comandos importantes
```
docker start
docker stop
docker exec -it
docker stop -t=0 # Antes do nome do meu container, para que não tenha nenhum tempo para parar, porque por padrão ele espera 10 segundos para nosso container parar de maneira saudável
docker run ubuntu bash
```
### Mapeando portas
```
docker run -d --name teste dockersamples/static-site
docker run -d -P --name teste dockersamples/static-site # Mapea portas aleatoreas.
docker port teste
docker run -d -p 8080:80 --name teste dockersamples/static-site
```
## Criando e compreendendo imagens
***
### Entendendo imagens
    Imagens RO, Conteiners RW
```
docker images ls
docker inspect teste
docker history vimagick/ntopng
```
## Criando a primeira imagem
projeto app-node [link](https://github.com/danielartine/alura-docker/blob/aula-3/app-exemplo.zip?raw=true)
```
docker build -t rickymbru/app-node:1.0 .
docker run -d --name app-node -p 8081:3000 rickymbru/app-node:1.0
```
## Incrementando a imagem
Parar todas as imagens
EXPOSE para definir a porta no container
ARG em tempo de execução do BUILD
ENV para definir variavel no container
```
docker stop $(docker container ls -q)
docker run -d -p 9091:6000 rickymbru/app-node:1.2
```




