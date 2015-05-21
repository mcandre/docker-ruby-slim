FROM progrium/busybox
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN opkg-install ruby ruby-gems
