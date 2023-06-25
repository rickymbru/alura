# Introdução

## Indice
- [Conhecendo o Docker?](#conhecendo-o-docker)
- [Fluxo da criação de containers](#fluxo-da-criação-de-containers)
- [Outros comandos importantes](#outros-comandos-importantes)
- [Mapeando portas](#mapeando-portas)

### Conhecendo o Docker?
```
docker run ubuntu
```

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



