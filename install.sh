#!/bin/bash

#Mettre a jours sa distrib
sudo apt-get update
sudo apt-get upgrade

#Installer Postgresl
sudo apt-get install postgresql postgresql-contrib postgresql-server-dev postgresql-client pgadmin3 postgresql-autodoc postgresql-client-common postgresql-common

#Installer Java
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java sudo apt-get update 
sudo apt-get install oracle-java7-installer

#PHP
sudo apt-get install php5 zend-framework php-apc php5-curl php5-xdebug php5-common php5-gd php5-cli php5-xsl php5-pgsql php5-mcrypt php-pear

sudo pear channel-discover pear.pdepend.org
sudo pear channel-discover pear.phpmd.org
sudo pear channel-discover pear.phpunit.de
sudo pear channel-discover pear.phpdoc.org

sudo pear install pdepend/PHP_Depend-beta
sudo pear install --alldeps phpmd/PHP_PMD
sudo pear install PHP_CodeSniffer
sudo pear install pear.phpunit.de/phpcpd
sudo pear install phpunit/PHP_CodeBrowser
sudo pear install pear.phpunit.de/phploc
sudo pear install phpdoc/phpDocumentor-alpha
sudo pear install --alldeps phpunit/PHPUnit
sudo pear install pear.phpunit.de/PHPUnit_SkeletonGenerator

sudo phpcs --config-set default_standard PSR2

#Apache
sudo apt-get install apache2

#MySql
sudo apt-get install mysql-server phpmyadmin mysql-workbench

#Perl
sudo apt-get install libxml-libxml-perl libdate-manip-perl libdbd-pg-perl

# Serveur mail 
sudo apt-get install exim4

# Installation Ruby
sudo apt-get install ruby1.8 rubygems

# Installation Node Js
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
sudo npm install -g yo

#Autre
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner" && sudo apt-get update -qq
sudo apt-get install tree chromium-browser thunderbird firefox subversion git git-svn vim gedit gedit-plugins meld dia skype gimp filezilla flashplugin-installer build-essential libreoffice ant finger wkhtmltopdf curl libxslt-dev libxml2-dev hwinfo tidy trash-cli lynx screen unrar xubuntu-restricted-extras

#Installation composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin

#Activer les modules Apache
sudo a2enmod rewrite
sudo a2enmod deflate
sudo a2enmod headers

#Relancer tout les services
sudo service apache2 restart
sudo service postgresql restart

#Créer un utilisateur Postgresql
sudo su postgres -c"createuser mhor -sP"
