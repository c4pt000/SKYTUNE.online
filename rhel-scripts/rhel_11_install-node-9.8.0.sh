#!/bin/bash

echo ""
echo ""
echo ""
echo "this will overwrite node if it exists with node 9.8.0 binaries "
echo ""
echo "crtl-c to quit"
echo ""
echo ""
echo ""
echo ""
echo "current node version"
node -v
echo ""
echo "script will pause for 10 seconds"
sleep 10
echo ""
echo ""
yum install xz-* ruby-devel
tar -xf node-v9.8.0-linux-x64.tar.xz
cd node-v9.8.0-linux-x64
cp -rfv bin/* /usr/bin/
cp -rfv include/* /usr/include/
cp -rfv share/* /usr/share/
cp -rfv lib/* /usr/lib/
echo ""
cd ../
rm -rf node-v9.8.0-linux-x64
echo ""
echo ""
echo "node version is now set to node-9.8.0 located in /usr/bin"
which node
node -v
sleep 10
