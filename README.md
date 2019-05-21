This is/aims to be a lightweight Icingaweb2 container. It does not come with a database. Config will need to be pulled in from wherever you want, be it a git repo or whatever, usually you won't need to as it can just generate it itself.

The ports that will need to be forwarded to this are:

  - 80

This image does not currently support HTTPS but that would be fairly easy to implement but these kind of things are usually run behind a reverse proxy/ ingress controller anyway. 
Im not sure of all the volumes that need mounting, but the ones that spring to mind are:

  - /etc/icingaweb2

Simple run command:

docker run -i -p  80:80 -v $(pwd)/icingaweb:/etc/icingaweb registry.nyeprice.space/moby/docker-icingaweb2
