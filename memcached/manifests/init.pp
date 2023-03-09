#
# Copyright 2023 Your name here, unless otherwise noted.
#
class memcached {

 # Install memcached Package. 
 package { "memcached" : 
	ensure => installed, 
 }
  
 
 # Generate the memcached config file. 
 
 file {"/etc/memcached.conf" : 
	source => "puppet:///modules/memcached/memcached.conf", 
        owner  => "root", 
	group  => "root", 
	mode  => "0644", 
	require => Package["memcached"], 
	notify => Service["memcached"]
 }
 
 # Finally Restart the service. 
 
 service {"memcached" : 
	ensure => running, 
	enable => true, 
	require => [ Package["memcached"], 
		     File["/etc/memcached.conf"]
		   ]	
 }
}
