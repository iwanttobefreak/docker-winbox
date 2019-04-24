# Description
Docker image for winbox tool of mikrotik exporting graphical gui

# Usage
docker run --rm -ti -e USER=$USER -v=/etc/passwd:/etc/passwd:ro -v=/tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY iwanttobefreak/winbox
