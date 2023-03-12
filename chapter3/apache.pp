class apache {
	
   File {

	owner => "apache", 
	group => "apache", 
	mode => "0644", 
	require => Package["httpd"]

    }

   package {"httpd" : 
	ensure => installed

   }

   $index = @(INDEX)
   <html>
   <head> 
	<title> Jaya Guru Datta </title>
   </head>
   <body>
	<h1> Jaya Guru Datta and Sree Guru Datta !!
   </body>
   </html>
   | INDEX 
  
   file { "/var/www/html/index.html": 
	content => $index
   }

}
include apache
