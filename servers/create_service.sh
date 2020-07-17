#this is the full command used to create a working 5-replica service on a docker swarm, which includes secrets for the SSL certificates and the nginx.conf file as a docker config already mapped to its destination folder.

docker service create --name nginx_secure --replicas 5 --secret nginx.key --secret nginx.crt --config source=nginx.conf,target=/etc/nginx/conf.d/nginx.conf,mode=0440 -p 8081:80 -p 8082:443 nginx

