# Usa una imagen base de Docker (por ejemplo, Ubuntu, Alpine, etc.)
FROM ubuntu:latest

# Instala Docker Compose
RUN apt-get update && apt-get install -y docker-compose

# Copia tu archivo `docker-compose.yml` al contenedor
COPY docker-compose.yml /app/docker-compose.yml

# Establece el directorio de trabajo
WORKDIR /app

# Ejecuta el comando `docker-compose up --build`
CMD ["docker-compose", "up", "--build"]
