#! /bin/sh
# /etc/init.d/project.sh

### BEGIN INIT INFO
# Provides:		project.sh
# Required-Start:	$all
# Required-Stop:	$remote_fs $syslog
# Default-Start:	2 3 4 5
# Default-Stop:		0 1 6
# Short-Description:	Script de arranque automatico
# Description:		Script para arrancar project
### END INIT INFO

case "$1" in
	start)
		echo "Arrancando project"
		sudo /usr/bin/python3 /home/pi/project.py
		;;
	stop)
		echo "apagando project"
		;;
	*)
		echo "modo de uso: /etc/init.d/project.sh start|stop"
		exit 1
		;;
esac

exit 0
