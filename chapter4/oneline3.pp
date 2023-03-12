file {"/tmp/cookbook" : 
	ensure => "file"
}

file_line {"cookbook-remove": 
   ensure => "absent", 
   line => "Hello World", 
   path => "/tmp/cookbook", 
   require => File["/tmp/cookbook"]
}

file_line {"cookbook-match": 
	path => "/tmp/cookbook", 
	line => "New Fish",
	match => 'fish', 
	require => File["/tmp/cookbook"]
}
