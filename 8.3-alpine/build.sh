#!/bin/bash
docker pull php:8.3-fpm-alpine3.20
docker build -t tackleza/php-fpm-ext:8.3-alpine .
