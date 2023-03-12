file_line { "removehello": 
	path => "/tmp/newbook", 
	ensure => absent, 
	line => "Hello World"		
}

file_line { "replacefish": 

	path => "/tmp/newbook", 
	line => "New fish.", 
	match => "fish"
}
