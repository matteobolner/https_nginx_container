Contents of the folders:  
**-servers**:  
Implementation of a docker service on a swarm, consisting of 5 replicas of a nginx server with https access  
**-balancer**:  
Implementation of a docker service consisting of a single replica of a nginx load balancer which redistributes traffic to the servers mentioned above through https.

All SSL certificates for https access are created with OpenSSL and managed through docker secrets. The configuration files are managed through docker config; they are not encrypted, which is not necessary since they contain no sensitive data.

To update configuration files and secrets, simply run "docker service update <service name> --secret-rm  <secret name>" to remove the file; followed by the same command with --secret-add <updated secret name>; different names can be used by remapping the secret with the extended command --secret-add source=<>,target=<>
