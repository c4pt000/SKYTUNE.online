

## * WIP,


# todo:

* docker image soon
* mass uploader @profile

# Ubuntu 18.04

<br>
<br>
node 9.8.0 + ruby 2.5.1 best compat  (2.5.5 ot? best compat)
<br>
<br>
<br>


postgresql installer and site configuration for database username and password
https://github.com/c4pt000/SKYTUNE.online/blob/master/README.md.setupandcreate-postgresand-database.sh



<br>
# vibesky

#### https://vibesky.herokuapp.com


* original source
* https://github.com/Mpompili/vibesky

vibesky, a SoundCloud clone, is a music social media app where users can discover and upload music using a Ruby on Rails backend, Postgresql database, AWS S3 database, and React/Redux front-end architecture. 



https://github.com/c4pt000/SKYTUNE.online/tree/master/config/environments



## ** S3 amazon storage e.x. config from "config/environments/production.rb"
<br>
config.paperclip_defaults = {
<br>
  :storage => :s3,
<br>
  :s3_credentials => {
<br>
  :bucket => 'vibesky-test-YOUR-BUCKET-NAME',
<br>
  :access_key_id => 'AKIAJGXXXXXXXVCRDUJQ',
<br>
  :secret_access_key => 'dgmbhLYJwXXXXXXXDbGrbwkEYAvy6ZuHu8ghgD2i',
<br>
  :s3_region => 'ap-northeast-1',                                    //YOUR REGION HERE for s3
<br>
  :s3_host_name => 's3-ap-northeast-1.amazonaws.com'                   //YOUR REGION HERE for s3
<br>
  }
<br>
}
