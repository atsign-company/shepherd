FROM docker:29.8.1-cli@sha256:9f36dfce2d1fd053d700a4eca00c358df79bf7d8cb69d4a9e8d9981af18834ea

ENV SLEEP_TIME='5m'
ENV FILTER_SERVICES=''
ENV TZ='US/Eastern'
ENV VERBOSE='true'

RUN apk add --update --no-cache bash curl jq tzdata

COPY shepherd /usr/local/bin/shepherd

ENTRYPOINT ["/usr/local/bin/shepherd"]
