FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install NVM
RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN echo ". /.nvm/nvm.sh" >> /etc/bash.bashrc

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN sudo apt-get install -y nodejs

# Build Web
RUN git clone https://github.com/inspire-0905/bamboo-web.git
RUN npm install gulp -g
RUN cd bamboo-web && npm install && gulp release

EXPOSE 8000
