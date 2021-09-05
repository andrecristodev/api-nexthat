FROM node:13
ADD package.json /package.json
RUN yarn install
RUN yarn add sharp
ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin
WORKDIR /app
CMD ["yarn","start-docker"]