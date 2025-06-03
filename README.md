# PHP FPM Docker
## Same as official PHP repository, but install common extentions so you don't need to

Docker Hub: https://hub.docker.com/r/tackleza/php-fpm-ext

## This is not standalone PHP webserver
_(Please note this can't work as standalone webserver. need to work with nginx)_

If you want to run your php as standalone server. please use `tackleza/php-apache-ext`

Or Link: https://hub.docker.com/r/tackleza/php-apache-ext

## How to get started, here some example
    docker run -d -v ./data:/var/www/html tackleza/php-fpm-ext:8.2-alpine

## List of installed extentions
- **PDO**: PHP Data Objects, a database access layer providing a uniform method of access to multiple databases.
- PDO MySQL: PDO driver for MySQL.
- **GD**: Library for creating and manipulating images.
- **OPcache**: Bytecode cache for PHP, which improves performance.
- **Intl**: Internationalization extension for PHP.
- **bz2**: Extension for reading and writing bzip2-compressed files.
- **SOAP**: Simple Object Access Protocol extension.
- **XSL**: XML Stylesheet Language Transformation extension.
- **ZIP**: ZIP file management extension.
- **Calendar**: Calendar conversion support.
- **EXIF**: Exchangeable image file format support.
- **BCMath**: Arbitrary precision mathematics.
- **Sockets**: Low-level interface to the socket communication functions.
- **gettext**: Native language support through the GNU gettext.
- **shmop**: Shared memory operations.
- **sysvmsg**: System V message queue support.
- **sysvsem**: System V semaphore support.
- **sysvshm**: System V shared memory support.
- **Tidy**: Clean and repair HTML and XML documents.
- **mysqli**: MySQL Improved Extension.
- **PCNTL**: Process Control support.
- **IMAP**: Internet Message Access Protocol extension.
- **MongoDB**: MongoDB driver for PHP.
- **Imagick**: ImageMagick extension for creating and modifying images.
- **GMP**: library supported in PHP that allows you to do mathematical operations on signed integers

## List of installed system utils
- **curl**: CURL is used in command lines or scripts to transfer data
- **ping**: ping command use for test the ability of the source computer to reach
- **nano**: nano is a small editor for on the terminal
- **git**: Git is a DevOps tool used for source code management
- **Composer**: A Dependency Manager for PHP.

## Custom php.ini

You can mount your custom php settings. Please look at the example above

      -v $(pwd)/custom-php.ini:/usr/local/etc/php/conf.d/custom-php.ini \

## I've fixed permissions for www-data
When php code is executed, it's run as user `www-data` to simply fix some permission problem. I've changed the owner of "/var/www" to `www-data:www-data` otherwise, this can cause a permission problem, such as when creating or modifying a file. For example, some of your application need to write something to file