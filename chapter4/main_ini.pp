ini_setting { "mainsection" : 
	path => "/tmp/main.ini", 
	section => "main", 
	setting => "server", 
	value => "true",
}

ini_subsetting { "subsetting" : 
	path => "/tmp/main.ini", 
	section => "main", 
	setting => "newserver", 
	subsetting => "newsetting", 
	value => "test"

}

ini_subsetting { "newsubset" :
        path => "/tmp/main.ini",
        section => "main",
        setting => "newserver",
        subsetting => "newone",
        value => "=test"

}

