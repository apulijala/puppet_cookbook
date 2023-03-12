file {"/tmp/hello" : 
	ensure => file, 
}

file_line { "tmplearn" : 

	require => File['/tmp/hello'], 
	line => "Learning Puppet", 
	path => "/tmp/hello",
}
