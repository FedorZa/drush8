# Drush Docker Container
FROM drush/drush:base
MAINTAINER Fedor Zakharov <fedor@therefore.ca>

# Set the Drush version.
ENV DRUSH_VERSION 8.4.8

# Install Drush 8 with the phar file.
RUN curl -fsSL -o /usr/local/bin/drush.phar "https://github.com/drush-ops/drush/releases/download/$DRUSH_VERSION/drush.phar" && ln -s drush.phar drush  && \
  chmod +x /usr/local/bin/drush

# Test your install.
RUN drush core-status
