# Docker image for haproxy for Jenkins Enterprise high availability

FROM apemberton/jenkins-base
MAINTAINER Andy Pemberton <apemberton@cloudbees.com>

# install haproxy
RUN apt-get update && apt-get install -y --no-install-recommends \
    haproxy \
    rsyslog

EXPOSE 80

# USER jenkins

CMD ["/bin/bash"]
