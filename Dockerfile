FROM docker:29.10.0-cli@sha256:34507eb5069d8be82c95dd3b6987d4250fd5fee49b82e2509b7d7a7030740d6d

ENV SLEEP_TIME='5m'
ENV FILTER_SERVICES=''
ENV TZ='US/Eastern'
ENV VERBOSE='true'

RUN apk add --update --no-cache bash curl jq tzdata

COPY shepherd /usr/local/bin/shepherd

ENTRYPOINT ["/usr/local/bin/shepherd"]
