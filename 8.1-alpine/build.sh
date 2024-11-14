#!/bin/bash
docker pull php:8.1-fpm-alpine3.19
docker build -t tackleza/php-fpm-ext:8.1-alpine .
