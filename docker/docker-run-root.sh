#!/bin/sh
#set -x
#Fix user home directory permissions 
#  if needed and exec docker-run script

RUN_USER="pyicqt"
#USER_DIR=`eval echo "~$RUN_USER"`
USER_DIR="/home/$RUN_USER"

DIR_OWNER=`stat -c '%U' "$USER_DIR"`

if [ "$DIR_OWNER" != "$RUN_USER" ]; then
	chown -R "$RUN_USER:$RUN_USER" "$USER_DIR"
fi

if [ ! -f $USER_DIR/pyicqt.conf.xml ]; then
	cp /etc/pyicqt.conf.xml $USER_DIR
	chown -R "$RUN_USER:$RUN_USER" "$USER_DIR/pyicqt.conf.xml"
fi

if [ ! -d $USER_DIR/data ]; then
	mkdir $USER_DIR/data
	chown -R "$RUN_USER:$RUN_USER" "$USER_DIR/data"
fi

exec su -s /bin/sh -c "exec /usr/bin/python /usr/share/pyicqt/PyICQt.py --config=$USER_DIR/pyicqt.conf.xml -o spooldir=$USER_DIR/data -d " $RUN_USER

