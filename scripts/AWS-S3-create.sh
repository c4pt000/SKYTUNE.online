#!/bin/bash
#read -p "email: " email
#read -p "account name: " account_name

#aws organizations create-account   --email "$email"   --account-name "$account_name"   --role-name "admin"   --iam-user-access-to-billing ALLOW   --output text   --query 'CreateAccountStatus.Id'


 aws configure list
read -p "mfa name: " namemfa
read -p "email: " emailid
read -p "account name: " account

tag=$(date +%Y%m%d) # Or some meaningful alphanumeric string
account_name=$account
email=$emailid
role=admin
profile=$tag-$role
mfa_name=$namemfa

create_request_id=$(aws organizations create-account \
  --email "$email" \
  --account-name "$account_name" \
  --role-name "$role" \
  --iam-user-access-to-billing ALLOW \
  --output text \
  --query 'CreateAccountStatus.Id'
)
echo create_request_id=$create_request_id

#aws organizations create-account   --email "skytune@example.com"   --account-name "skytune-test"   --role-name "admin"   --iam-user-access-to-billing ALLOW   --output text   --query 'CreateAccountStatus.Id'
