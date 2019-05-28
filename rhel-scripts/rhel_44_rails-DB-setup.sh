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

echo "crtl-c to quit"
sleep 20

		# extreme wrench -> gem uninstall -Iax remove all install gems,
cd ../
yum install redhat-rpm-config-110-1.fc28.noarch -y
gem install bundler -v 1.17.3
bundle update
bundle install

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


sed -i "30s/.*/production: /g" ../config/secrets.yml
sed -i "31s/.*/  secret_key_base: $varname/g" ../config/secrets.yml
done < "$file"

cd ../db
rails db:setup
rails db:migrate:redo
rails db:migrate:status



cat ../config/secrets.yml
sed '30q;d' ../config/secrets.yml
sed '31q;d' ../config/secrets.yml

sleep 10
