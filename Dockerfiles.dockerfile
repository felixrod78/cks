Dockerfiles
1
FROM nginx:1.19.10

RUN apt-get update && apt-get install -y mathblasters
Borro software de mas
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

2
FROM nginx:1.19.10

USER root

RUN useradd -ms /bin/bash nginxuser

USER root
cambiar user root por nginxuser
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

3
FROM busybox:1.33.1

COPY db_connect /usr/local/bin/
ENV db_password=hunter2
borrar password
CMD ["db_connect", "--user admin", "--password "]