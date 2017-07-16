FROM scylladb/scylla-build-dependencies-docker:ubuntu-16.04-clang-trunk
MAINTAINER Avi Kivity <avi@scylladb.com>
RUN apt -y install default-jdk-headless openssh-server
RUN useradd -m jenkins
RUN mkdir /home/jenkins/.ssh
COPY authorized_keys /home/jenkins/.ssh/authorized_keys
RUN mkdir /home/jenkins/workdir
RUN chown -R jenkins:jenkins /home/jenkins
RUN chmod 700 /home/jenkins/.ssh
RUN chmod 600 /home/jenkins/.ssh/authorized_keys
EXPOSE 22
RUN mkdir -p /var/run/sshd
RUN chmod 700 /var/run/sshd
VOLUME /home/jenkins/workdir
