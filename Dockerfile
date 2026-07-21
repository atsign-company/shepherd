FROM docker:29.6.2-cli@sha256:be132a9f282288de4afaf63379dff75711fda0147c6b72a9df44e51841402144

ENV SLEEP_TIME='5m'
ENV FILTER_SERVICES=''
ENV TZ='US/Eastern'
ENV VERBOSE='true'

RUN apk add --update --no-cache bash curl tzdata

COPY shepherd /usr/local/bin/shepherd

ENTRYPOINT ["/usr/local/bin/shepherd"]
