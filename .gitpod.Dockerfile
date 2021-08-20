FROM gitpod/workspace-full-vnc

USER root

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN  apt-get -q update && \
     apt-get install -yq bastet && \
     DEBIAN_FRONTEND=noninteractive apt-get install -yq ubuntu-desktop && \
     apt-get install -yq ssh && \
     wget https://download.nomachine.com/download/7.6/Linux/nomachine_7.6.2_4_amd64.deb && \
     apt-get install -yq ./nomachine_7.6.2_4_amd64.deb && \
     apt-get install -yq virtualbox && \
     apt-get install -yq virtualbox-ext-pack && \
     rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

USER gitpod
