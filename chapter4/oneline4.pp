file { "/tmp/newbook" : 
	ensure => file
}

file_line { "tmpnewbook" : 
	path => "/tmp/newbook",
	line => "Hello World", 	
	ensure => "present",
	require => File["/tmp/newbook"],
}

file_line { "newtmpbook" :
        path => "/tmp/newbook",
        line => "some fish in the lake in it",
        ensure => "present",

}

