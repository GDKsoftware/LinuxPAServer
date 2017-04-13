FROM ubuntu

RUN \
  apt-get update && \
  apt-get install -y tar gzip wget zip unzip zlib1g-dev curl

COPY LinuxPAServer19.0.tar.gz /root/LinuxPAServer19.0.tar.gz
RUN \
  cd /root && \
  tar xzvf LinuxPAServer19.0.tar.gz && \
  mv PAServer-19.0 PAServer && \
  cd PAServer && \
  mkdir scratch-dir

# Define mountable directories.
# VOLUME []

# Define working directory.
WORKDIR /root/PAServer

# Define default command.
CMD ["paserver -password="]

# Expose ports.
EXPOSE 22
EXPOSE 64211
