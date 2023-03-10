# Install  package.
package { 'httpd':
   ensure =>  "installed"
}

# Start service when package is stalled
service { "httpd": 
    ensure =>  "running", 
    require =>  Package['httpd'],
}

# Put the vhost defintion in /etc/httpd/conf.d/cookbook.conf
$cookbook = @(COOKBOOK)
<VirtualHost *:80>
    Servername cookbook
    DocumentRoot /var/www/cookbook
</VirtualHost> 
 | COOKBOOK

file {"/etc/httpd/conf.d/cookbook.conf": 
    content => $cookbook, 
    require => Package['httpd'],
    notify => Service['httpd'],
}

$index = @(INDEX)
<html>
<body>
  <h1>Jaya Guru Datta !! and Sree Guru Datta!!</h1>
</body>
</html>
| INDEX

# Create the index.html file in /var/www/cookbook
file {"/var/www/cookbook": 
	ensure => directory, 
        require => Package['httpd'],
}

file { "/var/www/cookbook/index.html": 
        content => $index,
	ensure => file, 
	require => File['/var/www/cookbook']
}
