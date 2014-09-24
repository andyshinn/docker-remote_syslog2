FROM progrium/busybox

ADD https://github.com/papertrail/remote_syslog2/releases/download/v0.13/remote_syslog_linux_amd64.tar.gz /

RUN gunzip -c remote_syslog_linux_amd64.tar.gz | tar -x -f - \
  && rm remote_syslog_linux_amd64.tar.gz

ENTRYPOINT ["/remote_syslog/remote_syslog", "-D"]
