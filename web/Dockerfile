FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Nodejs
RUN git clone https://github.com/creationix/nvm.git $HOME/.nvm
RUN echo '. ~/.nvm/nvm.sh' >> $HOME/.profile
RUN nvm install stable && nvm use stable
