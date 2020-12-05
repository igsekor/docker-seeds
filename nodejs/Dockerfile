FROM node 
WORKDIR /app
COPY . .
RUN git config --global user.name "<user name>"; git config --global user.email "<user email>"
RUN npm install
RUN apt-get update; apt-get install -y vim
RUN cp /app/.bashrc ~/.bashrc
EXPOSE 8080/tcp