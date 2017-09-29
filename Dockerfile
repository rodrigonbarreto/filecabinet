FROM ruby:2.3-slim
# Install dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev imagemagick libmagickwand-dev
# Set up path
ENV INSTALL_PATH /filecabinet
# create path
RUN mkdir -p $INSTALL_PATH
# SETUP PATH LIKE PRINCIPAL
WORKDIR $INSTALL_PATH
# Copy my Gemfile to inside the container
COPY Gemfile ./
# setup path to the Gems
ENV BUNDLE_PATH /box
# Copy code to inside the container
COPY . .
