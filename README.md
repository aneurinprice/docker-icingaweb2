# WORK IN PROGRESS #

## Auto-Mirrored from Gitlab to Github and to My Registry

## Please make Pull/Merge Requests on my Gitlab, Issues can be raised anywhere 

### Available on my [Gitlab](https://gitlab.nyeprice.space/moby/docker-icingaweb2) 

### Available on [Github](https://github.com/aneurinprice/docker-icingaweb2) 

### Available on [My Registry](https://registry.nyeprice.space) 


## Docker Image ##
`registry.nyeprice.space/docker-icingaweb2/docker-icingaweb2:latest`


## Current Issues: ##
 
  

Is based on _debian:buster-slim_

Accepts http conntections on port 80

Environment Variables and Default Values:

Variable	            |	Default Value |Acceptable Options
----------------------------|-----------------|-----------------------
phptimezone                 |  Europe/London  | String [See PHP Docs](https://www.php.net/manual/en/timezones.php)



## Example command: ##
  - `docker run -d -p 80:80 -e timezone="America/New_york -v $(pwd)/icingaweb:/etc/icingaweb2  registry.nyeprice.space/docker-icingaweb2/docker-icingaweb2:latest`