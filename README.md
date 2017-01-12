# ansible

### example
```
- name: configure dockered stack
  hosts: target_servers
  become: true
  become_method: sudo
  roles:
    - {
        role: docker.app
        app: www
        user: www
        etc: etc
      }
  tasks:
     - include: roles/docker.app/tasks/network.yml network=net01
     - include: roles/docker.app/tasks/volume.yml volume="{{ item }}"
       with_items:
         - mariadb
         - phpmyadmin
         - wordpress
         - nginx
```
