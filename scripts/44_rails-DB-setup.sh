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
echo "install s3 credentials before running this script...or expect errors"
echo ""
echo ""
echo "https://github.com/c4pt000/SKYTUNE.online/blob/master/config/environments/production.rb#L68"
echo "https://github.com/c4pt000/SKYTUNE.online/blob/master/config/environments/development.rb#L68"
echo ""
echo ""
echo "general s3 errors include "
echo ""
echo "Aws::S3::Errors::InvalidAccessKeyId: The AWS Access Key Id you provided does not exist in our records."
echo ""
echo ""
echo ""
echo "THIS SCRIPT WILL BREAK WITHOUT PROPER S3 setup beforehand"

echo "crtl-c to quit"
sleep 20
cd ../
cd db
rails secrets:setup
rails secret > secret.txt
cp -rf secret.txt ../scripts/
cd ../scripts

file=secret.txt

while IFS= read -r varname; do
    printf '%s\n' "$varname"

echo "$varname"

sed '30q;d' ../config/secrets.yml
sed '31q;d' ../config/secrets.yml


sed -i "30s/.*/  production: /g" ../config/secrets.yml
sed -i "31s/.*/  secret_key_base: $varname/g" ../config/secrets.yml
done < "$file"


rails db:create
rails db:setup
rails db:migrate
rails db:seed



cat ../config/secrets.yml
sleep 3
sed '30q;d' ../config/secrets.yml
sed '31q;d' ../config/secrets.yml
sleep 3
