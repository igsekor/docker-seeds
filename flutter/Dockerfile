FROM matspfeiffer/flutter

# App settings
WORKDIR /app
COPY . .
RUN git config --global user.name "<user name>"; git config --global user.email "<user email>"
# Make sure that you run Android Emulator on base machine
# and connect ADB to the port 5555 by command before run
# the project inside a container:
# > adb tcpip 5555
# To create a new Flutter project uncomment the following line:
# RUN flutter upgrade; flutter create -t app --org com.igsekor.experiments.db -a kotlin -i swift /app

# Enviroment settings
RUN cp /app/.bashrc ~/.bashrc
