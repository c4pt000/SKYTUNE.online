

## * WIP,


# todo:

* docker image soon
* mass uploader @profile

# Ubuntu 18.04    RHEL/Fedora

<br>
<br>
node 9.8.0 + ruby 2.5.1 best compat  (2.5.5 ot? best compat)
<br>
<br>
<br>


# S3 module is optional for use as a remote data store
<br>
* site will operate in NON SSL or SSL either way HTTP or HTTPS
<br>

bootstrap_MAIN_install.sh              for Ubuntu 18.04 install mainly (Debian/otherAPTs)
<br>
rhel_bootstrap_MAIN_install.sh          for Fedora 28 installs mainly (RHEL/CentOS other)
<br>

default operation standard HTTP
<br>
check -> https://github.com/c4pt000/SKYTUNE.online/edit/master/config/environments/README.md


<br>

check ssl-cert-creation.txt
<br>
 server.cert -> fullchain1.pem        server.key -> privkey1.pem 
 <br>

replace with your SSL cert per DNS            for server.key, server.cert,   -> ip specific
<br>
thin start -a 0.0.0.0 -p 443 --ssl --ssl-key-file server.key --ssl-cert-file server.cert -e production 


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


# vibesky

#### https://vibesky.herokuapp.com


* original source
* https://github.com/Mpompili/vibesky

vibesky, a SoundCloud clone, is a music social media app where users can discover and upload music using a Ruby on Rails backend, Postgresql database, AWS S3 database, and React/Redux front-end architecture. 







