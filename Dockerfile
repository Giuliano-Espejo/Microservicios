# Usa una imagen base de Docker para ejecutar Docker Compose
FROM docker:20.10.7-dind

# Instala Docker Compose
RUN apk add --no-cache py3-pip && \
    pip install docker-compose

# Copia el archivo docker-compose.yml al contenedor
COPY docker-compose.yml /docker-compose.yml

# Establece el directorio de trabajo
WORKDIR /

# Ejecuta Docker Compose
CMD ["docker-compose", "up", "--build"]
