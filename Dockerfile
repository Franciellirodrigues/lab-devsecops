# Usando uma imagem antiga de proposito para gerar alertas de seguranca no Trivy
FROM node:14

WORKDIR /app
COPY . .

# Comando de inicializacao simulado
CMD ["echo", "App rodando de forma segura!"]