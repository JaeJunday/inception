FROM debian:bullseye

RUN apt-get -y update \
    && apt-get -y install curl

# Install Nginx
RUN apt-get -y install nginx

# Install PHP and PHP-FPM
RUN apt-get -y install php-fpm

# Create a volume for WordPress data
VOLUME ["/home/jaejkim/data/wordpress"]

# Expose port 8080
EXPOSE 8080

# Create a directory for PHP-FPM to store runtime files
RUN mkdir /run/php \
    && chmod 777 /run/php

# Download and extract WordPress
RUN curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
    && tar -xzf /tmp/wordpress.tar.gz -C /var/www/html/ \
    && rm /tmp/wordpress.tar.gz

# Set ownership and permissions for WordPress files
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Uncomment the following line to copy a custom PHP-FPM configuration file
# COPY conf.php /etc/php/7.4/fpm/pool.f/conf.php

# Uncomment the following lines if you want to use dumb-init as the entrypoint
# RUN apt-get -y install dumb-init
# ENTRYPOINT ["/usr/bin/dumb-init", "--"]

# Start PHP-FPM in foreground mode
CMD ["/usr/sbin/php-fpm7.4", "-F"]
