# alterar no package.json 
# "dev": "vite --port 3000 --host 0.0.0.0",
# comandos
# docker build . -t timer365
# docker run -d -p 3000:3000 timer365
# criar container a partir da imagem node
FROM node:alpine


WORKDIR /app

# copiar todos os arquivos q estão dentro do dockerfile para o container
COPY . . 


RUN npm install

EXPOSE  3000

CMD ["npm", "run", "dev"]