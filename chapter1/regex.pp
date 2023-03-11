$class_c = regsubst($::ipaddress, '(.*)\..*', '\1.0')
notify {"The network part of ${::ipaddress} s $class_c": }
$class_d = regsubst($::ipaddress, '\.\d+$', '.0')
notify {"The network part of ${::ipaddress} is $class_d": }

$iface = { "name" => "eth0", 
	    "ip"   => "192.168.0.1"
	}  + { "route" => "192.168.0.254" }

notice($iface)


$secret = Sensitive("My top Secret Password")
notice($secret)
notice($secret.unwrap)
$total = 100
$count = [1, 2, 3, 4, 5]
$sum = reduce($count) | $total, $i | { $total + $i}
notice("Sum is $sum")
$countnew = [1, 3, 4, 5, 10, 19]
$filter = filter($countnew)  | $i | { $i > 4}
$map = map($count) | $i | {$i * $i}
notice($map)
each($countnew) | $i | { notice($i) } 
