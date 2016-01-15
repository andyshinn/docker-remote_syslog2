FROM gliderlabs/alpine:3.1

RUN apk-install -t deps wget ca-certificates \
  && wget -q -O - https://github.com/papertrail/remote_syslog2/releases/download/v0.16/remote_syslog_linux_amd64.tar.gz \
  | tar -zxf - \
  && apk del deps

ENTRYPOINT ["/remote_syslog/remote_syslog", "-D"]
