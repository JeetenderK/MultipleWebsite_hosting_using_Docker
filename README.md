# MultipleWebsite_hosting_using_Docker

In this example created 2 containerised wordpress application which will be called by their different virtual host names.
Hence in total 6 containers will be created.

Contents :

1. Docker Compose file for creating Nginx proxy container, letsencrypt-nginx-proxy-companion and 2 Database containers
2. Docker Compose file for creating 2 word press applications
3. A bash script which will trigger the creation of above mentioned containers


For conatiners made use of images :

wordpress, jwilder/nginx-proxy, jrcs/letsencrypt-nginx-proxy-companion, mariadb

Total containers :
2x wordpress
2x mariadb
1x nginx-proxy
1x letsencrypt-nginx-proxy-companion

Made use of Nginx proxy container referred from : nginx-proxy/docker-letsencrypt-nginx-proxy-companion.
Configure Docker compose file according to need especially VIRTUAL_HOST and LETSENCRYPT_HOST environment variables. 

VIRTUAL_HOST control proxying by nginx-proxy and LETSENCRYPT_HOST control certificate creation and SSL enabling by letsencrypt-nginx-proxy-companion.
