FROM ruby:3.4-alpine

# install dependencies
RUN apk add --no-cache curl g++ jq make

# cache busting by passing version
ARG CF_UAAC_VER
RUN gem install cf-uaac --no-document
