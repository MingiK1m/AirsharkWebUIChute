# Airshark webserver image
#
# Runs webserver for airshark detection results

# Specify the base image.
FROM paradrop/workshop

# Install dependencies
# RUN apt-get update && apt-get install -y \
# 	<None>


# Install files required by the chute.
#
# ADD <path_inside_repository> <path_inside_container>
#
ADD chute/* /usr/local/bin/

# Make the web server's port available outside the container.  We will also
# need to configure port binding in the chute configuration.
#
# EXPOSE <port_inside_container>
#
EXPOSE 8100

# This is the command that will be run inside the container.  It can be a bash
# script that runs other commands, a python script, a compiled binary, etc.
CMD ["bash", "/usr/local/bin/run.sh"]
