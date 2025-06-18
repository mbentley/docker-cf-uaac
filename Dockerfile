FROM mbentley/alpine:latest

# install dependencies
RUN apk add --no-cache curl g++ jq make ruby ruby-dev

# cache busting by passing version
ARG CF_UAAC_VER
RUN gem install cf-uaac --no-document
