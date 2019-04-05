#!/usr/bin/env bash

if  [ -n "${MYSQL_ROOT_PASSWORD+isset}" ]
then
    mysql_cmd="mysql -u root -p${MYSQL_ROOT_PASSWORD}"
else
    mysql_cmd="mysql -u root"
fi

${mysql_cmd} <<EOF
CREATE DATABASE IF NOT EXISTS ${DJANGO_DB_NAME};
GRANT ALL PRIVILEGES on ${DJANGO_DB_NAME}.* to ${DJANGO_DB_USER}@'%' IDENTIFIED BY '${DJANGO_DB_PASSWORD}';
GRANT ALL PRIVILEGES on test_${DJANGO_DB_NAME}.* to ${DJANGO_DB_USER}@'%' IDENTIFIED BY '${DJANGO_DB_PASSWORD}';
EOF
