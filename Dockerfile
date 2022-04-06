FROM alpine:3.15

ARG BUILD_DATE
ARG VCS_REF
LABEL maintainer="James Hunt <images@huntprod.com>" \
      summary="Run httrack in a container" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/filefrog/httrack.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0"

RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing httrack

WORKDIR /out
ENTRYPOINT ["httrack"]
CMD ["--help"]
