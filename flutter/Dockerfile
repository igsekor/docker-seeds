FROM matspfeiffer/flutter

# App settings
WORKDIR /app
COPY . .
RUN git config --global user.name "<user name>"; git config --global user.email "<user email>"
# Make sure that you run Android Emulator on base machine
# and connect adb to the port by command before working with
# project inside a container:
# > adb tcpip 5555

# Enviroment settings
RUN cp /app/.bashrc ~/.bashrc
