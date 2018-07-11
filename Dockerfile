FROM mhart/alpine-node
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build
RUN npm -g add serve
EXPOSE 3000
CMD ["serve", "-l", "3000", "build"]

