FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install NVM
RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN echo ". /.nvm/nvm.sh" >> /etc/bash.bashrc

# Install Node.js
RUN /bin/bash -c '. /.nvm/nvm.sh && nvm install stable && nvm use stable && nvm alias default stable && ln -s /.nvm/stable/bin/node /usr/bin/node && ln -s /.nvm/stable/bin/npm /usr/bin/npm'

# Build Web
RUN git clone https://github.com/inspire-0905/bamboo-web.git
RUN npm install gulp -g
RUN cd bamboo-web && npm install && gulp release

EXPOSE 8000
