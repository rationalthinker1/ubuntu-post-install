# Ubuntu Post Install Script
Tired of having to install all the applications you need everytime you install a fresh Ubuntu on your computer? 
Look no more. Meant to be an easy way to install applications silently without user intervention.

- Comment out the line in which the application that you don't want appears.
- ./install.sh
 
## Add your own installers
You can add installers in /bin/installers. The name of the filename is the name of the installer in install.sh. Also, you can use shortcuts such as

`apt-install APP_NAME => apt-get install -y --no-install-recommends APP_NAME`

`apt-update APP_NAME  => apt-get -y update`

`app-repo APP_NAME    => add-apt-repository -y`


## Todo:
- Make install script for Intellij idea
- Make install script for Terminator
