#!/bin/bash
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""

echo "IF manually editing the config/database.yml DONT MOVE the 'password:' lines 32 29,80 in the "
echo "database.yml config,, scripts can break including this script !!!"
sleep 1

echo "installing needed postgres server database packages"
echo "setting postgres to default startup"


echo "crtl-c here to exit or (menu option)"
echo "run the following on any postgres missing errors"
echo "apt install postgresql -y"
echo "systemctl enable postgresql"
echo "systemctl start postgresql"

cd config/


echo ""
echo "default user is 'skytune'"
echo ""
echo "current user"
sed '29q;d' database.yml
sed '80q;d' database.yml
echo ""
echo ""
echo "Enter your site's main user to set defaults for the database.yml and to set the username for the postgres user: " 
read -p "username only , " username
echo ""
echo "check or change config/database.yml if needed "
echo ""
sed -i "29s/.*/ username: $username/" database.yml
sed -i "80s/.*/ username: $username/" database.yml
echo ""
echo "username is set as following in database.yml"
sed '29q;d' database.yml
sed '80q;d' database.yml
echo ""
sleep 1

echo "default password whatpass"
echo ""
echo ""
echo "current password"
sed '32q;d' database.yml
echo ""
echo ""
echo "Enter your site's main password to change defaults for the postgresql collection : " 
read -p "password only , ignore entry for password: " password
echo ""
echo check or change config/database.yml if needed
echo ""
sed -i "32s/.*/  password: $password/" database.yml
echo ""
sed '32q;d' database.yml
echo ""
echo password is set.
echo ""
echo ""


echo "displaying current postgres users now"
echo ""
echo ""

echo "sudo -u postgres bash -c  "psql -c '\du'""
echo ""
echo ""
echo ""

sudo -u postgres bash -c  "psql -c '\du'"

echo ""
echo "to delete user from the postgres database run "dropuser username" outside of this script"
echo ""
echo ""
echo ""

echo "actual postgres user creation must match previous username and password"

echo ""
echo ""
echo ""




echo "PASSWORD MUST MATCH PREVIOUS PASSWORD JUST ENTERED"
echo "PREVIOUS PASSWORD $password"
echo  "running physical postgres user creation for $username"
sleep 2
echo ""
echo "password for $username"
echo ""

createuser -sPE $username

echo ""
echo ""
echo ""
echo "if last command failed run outside of script"
echo "dropuser 'usertodrop'"
echo "then rerun script accordingly"
echo ""
echo ""
echo ""
echo ""

echo "run database-create.sh"

