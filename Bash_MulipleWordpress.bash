#! /bin/bash

if ["$(docker ps)"]
then
	if ["$(docker-compose --version)"]
	then
        docker-compose -f Docker-Compose.yml up -d
		
	# for setting maximum upload file size limit on php
	printf "file_uploads = On\nmemory_limit = 64M\nupload_max_filesize = 64M\npost_max_size = 64M\nmax_execution_time = 600" > ~/uploads.ini

	docker-compose -f Docker-Compose-Wordpress.yml up -d
	else
		echo Docker Compose Not installed
	fi
else
        echo Docker Not installed
fi
