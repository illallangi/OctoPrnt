FROM python:3.9.0

MAINTAINER Andrew Cole <andrew.cole@illallangi.com>
RUN pip install OctoPrint
CMD ["/usr/local/bin/octoprint" "serve" "--iknowwhatimdoing"

ARG VCS_REF
ARG VERSION
ARG BUILD_DATE
LABEL maintainer="Andrew Cole <andrew.cole@illallangi.com>" \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.description="OctoPrint in Docker form" \
      org.label-schema.name="OctoPrnt" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.url="http://github.com/illallangi/OctoPrnt" \
      org.label-schema.usage="https://github.com/illallangi/OctoPrnt/master/blob/master/README.md" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/illallangi/OctoPrnt" \
      org.label-schema.vendor="Illallangi Enterprises" \
      org.label-schema.version=$VERSION
