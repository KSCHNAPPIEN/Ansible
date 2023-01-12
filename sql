name: "Launch database container"
docker_container:
name: "{{ db_name }}"
image: mysql:5.7
volumes:
- "{{ docker_volume }}:/var/lib/mysql:rw"
restart: true
networks:
- name: "{{ docker_network }}"
env:
MYSQL_ROOT_PASSWORD: test341fd23@
MYSQL_DATABASE: fonteyndb
MYSQL_USER: fonteyn
MYSQL_PASSWORD: wordpress24121t5@
aliases:
- "{{ db_name }}"
vars:
docker_volume: db_data
docker_network: ansible_net
db_name: db
