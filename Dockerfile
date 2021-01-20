FROM busybox

MAINTAINER Torsten Bronger <t.bronger@fz-juelich.de>

ADD https://gist.githubusercontent.com/bronger/acce7736141b3fa118b0d47f1a2035ac/raw/signal_propagation.sh /usr/local/lib/

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
