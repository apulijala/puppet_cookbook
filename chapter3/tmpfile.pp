define tmpfile() {
	file { "/tmp/$name": 
		content => "Hello, World\n", 
	}
}
tmpfile {
	['a', 'b', 'c', 'd']: 
}

define webapp (String $domain = $facts['domain'], String $path, String $platform) {
	notice("$domain $path $platform")
}

webapp {"mynewwebapp" : 
	domain => "newdomain.com", 
	path => "/tmp/test", 
	platform => "MyHorizon.com"
}

