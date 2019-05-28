<br>
* site will operate standard http (non-https wasn't sure before)
<br>
site requires regular SSL certs, not really self signed SSL certs,  (namecheap.com? domain + letsencrypt cert for standard SSL)
<br>
<br>
default standard http
<br>
 config.force_ssl = false
<br>
(production.rb)
<br>
 config.force_ssl = false
<br>
(development.rb)
<br>
<br>
also check config/application.rb     ->  config.force_ssl = false
<br>
<br>
<br>
