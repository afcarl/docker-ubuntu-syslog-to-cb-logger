# We use our NodeJS Image as Base and add syslog and logrotate.
# The NodeJS image Contains S6 git and can so Handle the Tasks
FROM dockerimages/docker-nave
RUN apt-get update && apt-get -y upgrade
RUN apt-get install syslog logrotate
# At this point we Simply inject our NODEJS App that will catch the logrotate logs and stream them to couchbase.
# Maybe logrotate and syslog needs config maybe the NODEJS App will handle that its TODO!
