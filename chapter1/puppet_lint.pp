package {"rubygems": 
   ensure => "installed", 
   provider => "yum",
}

package {"puppet-lint": 
   ensure => "installed", 
   provider => "gem",
   require => Package["rubygems"]
}
