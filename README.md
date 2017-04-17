# api-starter-kit
kit to get started on an api backend for a webservice

## Things this repo should make very easy.
1) starting a django project and app.
2) environment variables.
3) building a docker image.
4) docker-compose file.
5) cloud formation config for deployment in aws.
6) continuous testing/deployment/docker image building

## Structure of this repo.  
How will it be integrated into other repos?  Goals:
1) bring some scripts that make it easy to automate the above tasks.
2) when people update the scripts locally, it should also update on everyone elses.
3) simple.  Easy for others to update and make better.

## Ideas Pros/Cons
### Python Package
This would be a pip package that would have a command line tool to use.
#### Pros
1) excelent integration, you can just use a command line, don't need direct path.
2) somewhat easy to update, although everyone would have to update the package.
#### Cons
1) rather difficult and complicated to update.  need a package server.  Need to deploy.  THen need to pip upgrade

### Git submodule
This submodule would be in all of our projects under a directory.  When you pull it would update.  You could push to it fairly easily.
#### Pros
1) easy to update, scripts are right there in your repo.
#### Cons
1) Some people could be confused by this.

### Restful service
There would be easy to remember endpoint where you could run scripts from for local stuff.  There could be rest endpoint for doing stuff in the cloud, like creating a new environment.
#### Pros
1) no local update needed, everyone would imidatly use the most recent code.
2) no installation needed.
#### Cons
1) difficult to update.  Need to update repo, push, and deploy.  Although if they are scripts mostly, you could just update and run the scripts from the repo.  Then push when convienent.
