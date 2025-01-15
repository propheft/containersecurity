# Dockerfile básico para crear una imagen de ejemplo
FROM alpine:latest
RUN apk add --no-cache curl
CMD ["echo", "Hello, World!"]

