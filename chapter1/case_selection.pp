$systemtype = $facts['operatingsystem'] ? {
	'Ubuntu' => 'debianlike', 
	'Debian' => 'debianlike', 
	'RedHat' => 'redhatlike', 
	'Fedora' => 'redhatlike', 
	'CentOS' => 'redhatlike', 
	'default' => 'unknown', 
}
notify {"You have ${systemtype} system": }

class debianlike {
	notify {"Special manifest for Debian-Like Systems": }
}

class redhatlike {
	notify {"Special manifest for Redhat like systems": }
}

case $facts['os']['name'] {
    'RedHat', '1CentOS':  {
         include redhatlike
    } 
    default : {
	include debianlike
    }
}
