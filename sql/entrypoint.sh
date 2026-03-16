#!/bin/bash

if [ -f /tmp/mysql_root_password.txt ]; then
    password=$( cat /tmp/mysql_root_password.txt)
    echo "Acessed Root Password"
else
    echo "Password file not found"
    exit 1
fi

export mysql_root_password=$password

exec /entrypoint.sh mysqld