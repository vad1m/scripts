#!/bin/sh

# Download, compile and install SQL Relay (for php + MySQL environment)

sudo apt-get install -y cvs gcc g++ make libtool autoconf php5-dev php5-mysql libmysqlclient-dev
export CVSROOT=:pserver:anonymous@rudiments.cvs.sourceforge.net:/cvsroot/rudiments
cvs login
cvs checkout rudiments 
cd rudiments
./autogen.sh
./configure
make
sudo make install
export CVSROOT=:pserver:anonymous@sqlrelay.cvs.sourceforge.net:/cvsroot/sqlrelay
cvs login
cvs checkout sqlrelay
cd sqlrelay
./autogen.sh
./configure
make
sudo make install
