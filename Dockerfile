FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN node . --db 'mongodb+srv://SalehKirz:lanjutkan@cluster0.3llgb1k.mongodb.net/?retryWrites=true&w=majority'

COPY . .

EXPOSE 5000

CMD ["node", "main.js"]
