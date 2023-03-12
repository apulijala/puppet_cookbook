class allow {
  concat { "hosts-allow": 
	path => "/etc/hosts.allow", 
	ensure => present	 
  }
  concat::fragment {"header" : 
	content => "# File managed by puppet\n", 
	order => '01', 
	target => "hosts-allow",
  }

  concat::fragment { "tftpd" : 
	source => "/tmp/tftpd", 
	order => "101", 
	target => "hosts-allow",
  }
 
  concat::fragment {"ftpd" :  
	content => "in.ftpd: .example.com\n", 
	order => "104", 
	target => "hosts-allow", 

  }
}
include allow
