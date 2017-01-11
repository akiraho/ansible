#!/bin/bash

ansible-playbook -v \
  $1 $2 $3 \
  --inventory=inventory \
  --extra-vars " \
  local_dump_file=/tmp/a \
  source_ssh_host=source_server \
  source_ssh_user=user \
  source_db_user=user \
  source_db_password=password \
  source_db_name=db \
  target_db_docker_container=db01 \
  target_ssh_host=target_servers \
  target_ssh_user=user \
  target_mysql_root_password=password \
  target_db_user=user \
  target_db_password=password \
  target_db_name=db \
  " \
  migrate.yml

# dump_to_local.yml
# restore_to_remote.yml

