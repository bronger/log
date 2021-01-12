FROM busybox

MAINTAINER Torsten Bronger <t.bronger@fz-juelich.de>

ARG TINI_VERSION=v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

CMD ["sh", "-c", "exec tail -F $LOG_PATH"]
