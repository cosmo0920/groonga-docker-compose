#!/bin/ash

GROONGA_DB_DIR=/groonga/data
DBPATH=${GROONGA_DB_DIR}/data.db
if [ ! -d ${GROONGA_DB_DIR} ]; then
    mkdir -p ${GROONGA_DB_DIR}
fi
if [ ! -f ${DBPATH} ]; then
    /usr/bin/groonga -s -p 10041 --protocol http -n ${DBPATH}
else
    /usr/bin/groonga -s -p 10041 --protocol http ${DBPATH}
fi
