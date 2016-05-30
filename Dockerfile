FROM 3dpro/base-image
MAINTAINER Kittipun Khantitrirat <boot191@gmail.com>

ADD build-files /build-files
RUN echo 'Acquire::http::Proxy "http://172.17.0.1:3142";' > /etc/apt/apt.conf.d/11proxy && \
    apt-get update && \
    apt-get install -y sudo openssh-server vim tmux rsync byobu && \
    sed -i "/env_reset/a \Defaults        env_keep+=SSH_AUTH_SOCK" /etc/sudoers && \
    sed -i 's/required     pam_loginuid.so/optional     pam_loginuid.so/g' /etc/pam.d/sshd && \
    echo 'export LC_ALL=en_US.UTF-8' > /root/.bash_profile && \
    mkdir -p /var/run/sshd /root/.ssh && \
    mv /build-files/authorized_keys /root/.ssh/authorized_keys && \
    mv /build-files/start.sh /start.sh && \
    chown root:root /root/.ssh && \
    chmod 700 /root/.ssh && \
    chmod 600 /root/.ssh/authorized_keys && \
    chown root:root /start.sh && \
    chmod 755 /start.sh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /build-files /etc/apt/apt.conf.d/11proxy

CMD ["/start.sh"]

# Expose port
EXPOSE 22
