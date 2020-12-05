FROM python

# App settings
WORKDIR /app
COPY . .
RUN git config --global user.name "<user name>"; git config --global user.email "<user email>"
RUN pip install flask
EXPOSE 5000/tcp

# Enviroment settings
RUN apt-get update; apt-get install -y vim
RUN cp /app/.bashrc ~/.bashrc