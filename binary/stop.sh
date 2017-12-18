#!/bin/bash
. /root/.bash_profile
VAR=""
HBM_APP=`ps -aef | grep "SpringAlCRBT-0.0.5.jar"| grep -v grep`
if [ "$HBM_APP" != "$VAR" ]
then
	echo $HBM_APP
	PID=`ps -aef | grep "SpringAlCRBT-0.0.5.jar"| grep -v grep | awk '{print$2}'`
        echo "killing "$PID
        kill -9 $PID
else
echo "Already killed"
fi
