docker service create --name load_balancer --secret lb.crt --secret lb.key --config source=lb.conf,target=/etc/nginx/nginx.conf,mode=0440 -p 9091:80 -p 9092:443 nginx
