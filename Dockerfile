FROM node:12
ADD https://github.com/bkimminich/juice-shop/releases/download/v10.3.1/juice-shop-10.3.1_node12_linux_x64.tgz /juice-shop-10.3.1_node12_linux_x64.tgz
WORKDIR /
RUN tar -xf juice-shop-10.3.1_node12_linux_x64.tgz && mv juice-shop_10.3.1 juice-shop
COPY app.js /juice-shop
WORKDIR /juice-shop
RUN npm install --save trend_app_protect
ENV TREND_AP_LOG_LEVEL=debug
EXPOSE 3000
CMD ["npm", "start"]
