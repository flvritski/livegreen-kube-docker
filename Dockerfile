FROM node:10.19.0
RUN mkdir -p /usr/src/livegreen-frontend
WORKDIR /usr/src/livegreen-frontend

COPY package.json /usr/src/livegreen-frontend
RUN npm install -y -g @angular/cli
RUN npm install
COPY . /usr/src/livegreen-frontend
EXPOSE 4200
CMD ["npm", "start"]
