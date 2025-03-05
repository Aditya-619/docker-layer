FROM ubuntu

RUN apt update && \
    apt upgrade -y && \
    apt install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt install -y nodejs

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

RUN npm install

ENTRYPOINT [ "node", "index.js" ]