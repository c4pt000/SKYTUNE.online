insert data (replace) for aws s3 bucket, or site will break,

keep SSL = true

site requires regular SSL certs, not really self signed SSL certs,

(production.rb)
(development.rb)

near lines #70

threw amazon aws s3 bucket signup

#production.rb
config.paperclip_defaults = {
  :storage => :s3,
  :s3_credentials => {
  :bucket => 'vibesky-test',
    :access_key_id => 'AKIAJGU3P00000000000',
    :secret_access_key => 'dgmbhLYJwzVjy1xpD00000kEYAvy6ZuHu8g00000',
  :s3_region => 'ap-northeast-1',
:s3_host_name => 's3-ap-northeast-1.amazonaws.com'
  }
}
