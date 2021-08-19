FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN sudo apt-get -q update && \
    sudo apt-get install -yq bastet && \
    sudo apt-get install -yq ubuntu-desktop && \
    sudo apt-get install -yq ssh && \
    wget https://download.nomachine.com/download/7.6/Linux/nomachine_7.6.2_4_amd64.deb
    sudo apt-get install -yq ./nomachine_7.6.2_4_amd64.deb && \
    sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/


