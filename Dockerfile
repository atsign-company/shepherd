FROM docker:29.8.2-cli@sha256:35cfcf893c20f2931f4909151b5407aaaeab711277de7ce8b8f521f095d54c32

ENV SLEEP_TIME='5m'
ENV FILTER_SERVICES=''
ENV TZ='US/Eastern'
ENV VERBOSE='true'

RUN apk add --update --no-cache bash curl jq tzdata

COPY shepherd /usr/local/bin/shepherd

ENTRYPOINT ["/usr/local/bin/shepherd"]
