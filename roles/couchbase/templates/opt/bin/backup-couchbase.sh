#!/bin/bash
FOLDER={{ backup_dest }}
USERNAME={{ backup_username }}
PASSWORD={{ backup_password }}
#BACKUP=cb-backup-`date +%Y%m%d`
BACKUP=cb-backup

mkdir -p ${FOLDER}
cd ${FOLDER}
rm -r ${BACKUP}
mkdir ${BACKUP}
/opt/couchbase/bin/cbbackup http://localhost:8091 ${BACKUP} -u ${USERNAME} -p ${PASSWORD}
tar cvfpz ${BACKUP}.tgz ${BACKUP}
rm -r ${BACKUP}
