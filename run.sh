sudo docker rm haproxy
sudo docker run \
   --name haproxy \
   --net nichenet \
   -v ./haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg \
   -p 15000:15000 \
   -p 15001:15001 \
   -p 15002:15002 \
   -p 8404:8404 \
   haproxy