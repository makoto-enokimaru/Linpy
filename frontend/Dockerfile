FROM node:14.3

WORKDIR /app

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

COPY package*.json ./

RUN apt-get update -y && \
	npm install -g npm -S && \
	npm install nuxt -S && \
	npm install -g create-nuxt-app -S && \
    npm install -g @vue/cli -S && \
    npm install -g @vue/cli-init -S && \
    npm install ejs@3.0.1 -S && \
    npm install defu@3.1.0


COPY . /app

