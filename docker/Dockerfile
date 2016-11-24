FROM debian:stable-slim
MAINTAINER Vladimir Goshev <sunx@sunx.name>

RUN apt-get update && apt-get install -y pyicqt

RUN mkdir /home/pyicqt && chown pyicqt:pyicqt /home/pyicqt

COPY docker-run-root.sh /bin/docker-run-root

VOLUME /home/pyicqt

# Container will run some preparations with root access (fixing permissions, for example)
#   and then execute /bin/docker-run with user access to configure (if needed) and run
#		Ejabberd
CMD ["/bin/docker-run-root"]
