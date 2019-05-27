insert data (replace) for aws s3 bucket, or site will break,
<br>
keep SSL = true
<br>
site requires regular SSL certs, not really self signed SSL certs,
<br>
(production.rb)
<br>
(development.rb)
<br>
<br>
<br>
<br>
<br>
<br>
threw amazon aws s3 bucket signup
<br>
<br>
near lines #70
<br>
#production.rb
<br>
  config.paperclip_defaults = {
<br>
   :storage => :s3,
<br>
   :s3_credentials => {
<br>
   :bucket => 'vibesky-test',
<br>
   :access_key_id => 'AKIAJGU3P00000000000',
<br>
   :secret_access_key => 'dgmbhLYJwzVjy1xpD00000kEYAvy6ZuHu8g00000',
<br>
   :s3_region => 'ap-northeast-1',
<br>
   :s3_host_name => 's3-ap-northeast-1.amazonaws.com'
<br>
      }
<br>
   }
