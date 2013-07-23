#!/bin/bash 


##
## currently a lot of PHP extension are missed in this repo.
##
##if [ ! -f /etc/apt/sources.list.d/ondrej-php5-precise.list ];
##then
##       add-apt-repository ppa:ondrej/php5
##fi

#apt-get update
#apt-get upgrade -y


apt-get install apache2-mpm-prefork -y

apt-get install mysql-server-5.5 -y

apt-get install php5 php5-dev php5-cli php5-curl php5-common php5-gd php5-sqlite php5-xmlrpc php5-xsl php5-mysqlnd php5-imagick php5-memcached php5-xdebug php-pear php5-mcrypt -y
pear upgrade-all
pear config-set php_ini /etc/php5/apache2/php.ini
pear config-set auto_discover 1
## Install APC Alternative PHP Cache
if [ -n "`grep --quiet \"apc.so\" /etc/php5/apache2/php.ini`" ]; then
	printf "\n" | pecl install apc
fi

## Install phing PHP Automating Build
chkP=`pear info phing  | grep --quiet "No information found for"`
if [ -n $chkP ]; then
	pear channel-discover pear.phing.info
	pear install --alldeps pear.phpunit.de/PHPUnit
	pear install --alldeps phing/phing
fi

## Install phpcs PHP Code Sniffer
chkP=`pear info PHP_CodeSniffer  | grep --quiet "No information found for"`
if [ -n $chkP ]; then
	pear install --alldeps PHP_CodeSniffer
fi

## Install PHP Documentor
chkP=`pear info PhpDocumentor  | grep --quiet "No information found for"`
if [ -n $chkP ]; then
	pear install --alldeps PhpDocumentor
fi

if [ ! -f /usr/local/bin/composer ]; then
	curl -sS https://getcomposer.org/installer | php
	mv composer.phar /usr/local/bin/composer
fi


echo
echo "After install pear, reboot your system or you must have problems installing phing"
echo



echo "OK"
