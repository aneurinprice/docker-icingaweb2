# WORK IN PROGRESS #

## Auto-Mirrored from Gitlab -) Github -)  Dockerhub ##

## Please make Pull/Merge Requests on my Gitlab, Issues can be raised anywhere ##

### Available on my [Gitlab](https://gitlab.nyeprice.space/moby/docker-icingaweb2) ###

### Available on [Github](https://github.com/aneurinprice/docker-icingaweb2) ###

### Available on [Dockerhub](https://cloud.docker.com/u/m08y/repository/docker/m08y/docker-icingaweb2) ###



## Current Issues: ##
 
  

Is based on _debian:buster-slim_

Accepts http conntections on port 80

Environment Variables and Default Values:

Variable	            |	Default Value |Acceptable Options
----------------------------|-----------------|-----------------------
phptimezone                 |  Europe/London  | String [See PHP Docs](https://www.php.net/manual/en/timezones.php)



## Example command: ##
  - docker run -d -p 80:80 -e timezone="America/New_york -v $(pwd)/icingaweb:/etc/icingaweb2  m08y/docker-icingaweb2
