doctl compute droplet create hdp-16gb-sgp1-master \
--size 16gb \
--image ubuntu-16-04-x64 \
--region sgp1 \
--ssh-keys 0c:f5:03:1d:45:d7:1a:0f:9d:2f:16:31:85:da:c9:d5 \ 
--user-data-file install-docker.sh

# --tag-name hdp \


#INSTALL DOCKER

#install axel
apt-get install axel

# download sanbox 11GB
axel -n 10000 https://downloads-hortonworks.akamaized.net/sandbox-hdp-2.6.1/HDP_2_6_1_docker_image_28_07_2017_14_42_40.tar

#load to docker image
docker load -i sandbox-hdp-2.6.1/HDP_2_6_1_docker_image_28_07_2017_14_42_40.tar

#list image
docker images

#run docker
./start_sanbox-hdp.sh