#!/bin/bash

echo ""
echo ""
echo ""
echo "this will overwrite ruby if it exists with ruby 2.5.5 with a src compile "
echo ""
echo "crtl-c to quit"
echo ""
echo ""
echo ""
echo ""
echo "current ruby version"
ruby -v
echo ""
echo "script will pause for 10 seconds"
sleep 10
echo ""
apt install libssl-dev ruby-dev -y
echo ""
tar -xf ruby-2.5.5.tar.xz
cd ruby-2.5.5
./configure --prefix=/usr
echo ""
echo ""
echo "concurrency set to 16 for build process adjust for your core count if needed"
echo ""
echo ""
echo "make -j16 install"
echo "crtl-c to exit script"
echo ""
echo ""
echo "begining build process"
echo ""
echo "script will pause for 5 seconds"
echo ""
echo ""
sleep 5
make -j16 install
echo ""
cd ../
rm -rf ruby-2.5.5
echo ""
echo ""
echo "ruby version is now set to ruby-2.5.5 located in /usr/bin"
which ruby
ruby -v
