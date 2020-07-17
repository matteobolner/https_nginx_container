Implementation of a docker service on a swarm, consisting of 5 replicas of a nginx server with https access; the SSL certificates for https access are created with OpenSSL and managed through docker secrets. The nginx configuration file nginx.conf is managed through docker config; it is not encrypted, which is not necessary since it contains no sensitive data.

To do: -load balancer 

