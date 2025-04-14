FROM nginx:latest

WORKDIR /app

RUN apt-get update && apt-get install -y \
    luarocks \
    libnginx-mod-http-lua \
    && luarocks install lua-resty-openidc \
    && luarocks install lua-resty-http


