FROM 3dpro/base-debian:latest

COPY build-files /build-files
RUN apt-get update && \
    apt-get install --no-install-recommends -y openssh-server vim git && \
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
    rm -rf /var/lib/apt/lists/* /build-files

CMD ["/start.sh"]

# Expose port
EXPOSE 22
