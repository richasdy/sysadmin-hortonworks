doctl compute droplet create hdp-16gb-sgp1-master \
--size 16gb \
--image ubuntu-16-04-x64 \
--region sgp1 \
--ssh-keys 0c:f5:03:1d:45:d7:1a:0f:9d:2f:16:31:85:da:c9:d5 \ 
--user-data-file install-docker.sh

# --tag-name hdp \
