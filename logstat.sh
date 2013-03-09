#!/bin/bash

LSD=/var/corretge/logstat

if [ ! -d "${LSD}" ]; then

	mkdir -p ${LSD}
fi

mount | grep -v ^none > ${LSD}/mount.last

df | grep -v ^none > ${LSD}/df.last

df -i | grep -v ^none > ${LSD}/df-i.last

iostat -x -d > ${LSD}/iostat.last

pidstat -hwl | grep -v " 0.00      0.00" > ${LSD}/contextswitch.last

pidstat -hIl | grep -v "0.00    0.00    0.00    0.00" > ${LSD}/processCPU.last

pidstat -hrl > ${LSD}/processMem.last


du /var/lib/mysql --max-depth=1 > ${LSD}/mysqlSize.last

du /var/log --max-depth=1 > ${LSD}/logSize.last





