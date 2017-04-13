FROM ubuntu

RUN \
  apt-get update && \
  apt-get install -y tar gzip wget zip unzip zlib1g-dev curl

RUN mkdir PAServer && \
    mkdir PAServer/scratch-dir

ADD LinuxPAServer19.0.tar.gz /root/LinuxPAServer19.0.tar.gz
RUN \
  cd /root && \
  tar xzvf LinuxPAServer19.0.tar.gz && \
  cd PAServer19.0

# Define mountable directories.
VOLUME []

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["./paserver -password="]

# Expose ports.
EXPOSE 22
EXPOSE 64211
