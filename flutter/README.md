# The image for developing any app on Flutter in Docker container

The dev container is based on the Docker image 'matspfeiffer/flutter'. Don't forget to change the user name and email in Dockerfile to setup the git for yourself.

## Working with repository

All stages and options are described in the [repository](https://github.com/matsp/docker-flutter).

Due to my workflow it is suitable to use a way with simple configuration:

1. File .devcontainer.json is from this repository.
2. You could create a new project or put .devcontainer.jso into existing project.
3. Start your local android emulator. Afterwards reconnect execute the following command to make it accessable via network:

```bash
> adb tcpip 5555
```
4. In docker container connect to device:

```bash
$ adb connect host.docker.internal:5555
```

## Working with ADB

Make sure that you already installed SDK Platform-Tools.

### Using macOS (based on [Stackoverflow](https://stackoverflow.com/questions/31374085/installing-adb-on-macos?answertab=votes#tab-top))

#### Option 1 - Using Homebrew

This is the easiest way and will provide automatic updates.

1. Install homebrew

```bash
> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
 
2. Install adb

```bash
> brew cask install android-platform-tools
```

3. Start using adb

```bash
> adb devices
```

#### Option 2 - Manually (just the platform tools)

This is the easiest way to get a manual installation of ADB and Fastboot.

1. Delete your old installation (optional)

```bash
> rm -rf ~/.android-sdk-macosx/
```

Navigate to [https://developer.android.com/studio/releases/platform-tools.html](https://developer.android.com/studio/releases/platform-tools.html) and click on the SDK Platform-Tools for Mac link.

2. Go to your Downloads folder

```bash
> cd ~/Downloads/
```

3. Unzip the tools you downloaded

```bash
> unzip platform-tools-latest*.zip
```

4. Move them somewhere you won't accidentally delete them

```bash
> mkdir ~/.android-sdk-macosx
> mv platform-tools/ ~/.android-sdk-macosx/platform-tools
```

5. Add platform-tools to your path

```bash
> echo 'export PATH=$PATH:~/.android-sdk-macosx/platform-tools/' >> ~/.bash_profile
```

6. Refresh your bash profile (or restart your terminal app)

```bash
> source ~/.bash_profile
```

7. Start using adb

```bash
> adb devices
```

#### Option 3 - Manually (with SDK Manager)

1. Delete your old installation (optional)

```bash
> rm -rf ~/.android-sdk-macosx/
```

2. Download the Mac SDK Tools from the Android developer site under [Get just the command line tools](http://developer.android.com/sdk/index.html#mac-tools). Make sure you save them to your Downloads folder.

3. Go to your Downloads folder

```bash
> cd ~/Downloads/
```

4. Unzip the tools you downloaded

```bash
> unzip tools_r*-macosx.zip
```

5. Move them somewhere you won't accidentally delete them

```bash
> mkdir ~/.android-sdk-macosx
> mv tools/ ~/.android-sdk-macosx/tools
```

6. Run the SDK Manager

```bash
> sh ~/.android-sdk-macosx/tools/android
```

7. Uncheck everything but `Android SDK Platform-tools` (optional)

![Uncheck everything but Android SDK Platform-tools](https://i.stack.imgur.com/H2p4V.png)

8. Click `Install Packages`, accept licenses, click `Install`. Close the SDK Manager window.

![Install Packages, accept licenses, click Install](https://i.stack.imgur.com/ojZVT.png)

9. Add `platform-tools` to your path

```bash
> echo 'export PATH=$PATH:~/.android-sdk-macosx/platform-tools/' >> ~/.bash_profile
```

10. Refresh your bash profile (or restart your terminal app)

```bash
> source ~/.bash_profile
```

11. Start using adb

```bash
> adb devices
```
