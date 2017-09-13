# download sandbox 11GB
axel -n 100000 https://downloads-hortonworks.akamaized.net/sandbox-hdp-2.6.1/HDP_2_6_1_docker_image_28_07_2017_14_42_40.tar

#load docker image
docker load -i sandbox-hdp-2.6.1/HDP_2_6_1_docker_image_28_07_2017_14_42_40.tar
