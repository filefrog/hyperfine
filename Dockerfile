FROM alpine:edge

ARG BUILD_DATE
ARG VCS_REF
LABEL maintainer="James Hunt <images@huntprod.com>" \
      summary="Run Hyperfine in a container" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/filefrog/hyperfine.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
 && apk add hyperfine

ENTRYPOINT ["hyperfine"]
