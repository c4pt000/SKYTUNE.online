
* original source
* https://github.com/Mpompili/vibesky

vibesky, a SoundCloud clone, is a music social media app where users can discover and upload music using a Ruby on Rails backend, Postgresql database, AWS S3 database, and React/Redux front-end architecture. 



# SKYTUNE.online

<p align="center"><img src="https://i.imgur.com/wepal9D.jpg" width="800"></p>


# * not for use in automobiles

## * WIP,


# todo:


* mass uploader @profile
* .flac support (site currently only seems to support .mp3 possibly others)
* visual tic indicator for "loop once, loop indefinitely" in site audio player
* possible other plugins similar or identical to soundcloud.com

# Ubuntu 18.04    RHEL/Fedora

<br>
<br>
node 9.8.0 + ruby 2.5.1 best compat  (2.5.5 ot? best compat)
<br>
<br>
<br>


* docker image via
https://github.com/c4pt000/SKYTUNE-docker

                                                                       

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
todo -> clone rhel-install scripts to -> centos compability, last working rhel-scripts -> fedora 28~
<br>
# * update 
<br>
rhel-install script seems semi functional to bring up the frontend on a fresh install

<br>
sh rhel_bootstrap_MAIN_install.sh 
<br>
chmod +x launch-server-production-NON-ssl
<br>
./launch-server-production-NON-ssl
<br>
# * for docker
<br>
yum install git-core nano sudo which
<br>

docker run -ti --cap-add=SYS_ADMIN -e "container=fedora28" -v /sys/fs/cgroup:/sys/fs/cgroup fedora /usr/sbin/init 
<br>
docker exec -it container-name-here /bin/bash



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
docker as a WAN over VPS untested,
<br>
# docker local
<br>
xserver + lightdm in docker xhost and X11 forwarding for audio, ssh -> firefox/chrome on docker's side with ssh -Y or -X for 
<br>
X11 forwarding for local audio,                    or forward pulseaudio or alsa audio with docker with ssh forwarding,






<br>
<br>
<br>
<br>
<br>
<br>
todo document pgadmin3 or pgadmin4 scripted install for postgresql 
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







