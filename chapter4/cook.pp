file {'/tmp/cookbook': 
	ensure => file
}

file_line {"cookbook-hello" : 
	path => "/tmp/cookbook", 
	line => "Hello World",
	require => File["/tmp/cookbook"]
}

file_line{"cookbook-remove" : 
	path => "/tmp/cookbook", 
	line => "So Long, and thanks for all the fish", 
	require => File["/tmp/cookbook"]
}
