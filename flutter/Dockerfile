FROM matspfeiffer/flutter

# App settings
WORKDIR /app
COPY . .
RUN git config --global user.name "<user name>"; git config --global user.email "<user email>"
# Make sure that you run Android Emulator on base machine
# and connect adb to the port by command before build container:
# > adb tcpip 5555
RUN flutter upgrade; adb connect host.docker.internal:5555
# If you want to create a new project on Flutter uncomment next line and set parameters
# RUN flutter create # [parameters]

# Enviroment settings
RUN apt-get update; apt-get install -y vim
RUN cp /app/.bashrc ~/.bashrc
