#!/bin/bash
docker pull php:8.4-fpm-alpine3.21
docker build -t tackleza/php-fpm-ext:latest .
