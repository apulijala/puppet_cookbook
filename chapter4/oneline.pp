file { "/tmp/cookbook" : 
	ensure => file
}

file_line {"tmpfile" : 
	require => File['/tmp/cookbook'],
	path => "/tmp/cookbook", 
	line => "Jaya Guru Datta and Sree Guru Datta !!", 
}

