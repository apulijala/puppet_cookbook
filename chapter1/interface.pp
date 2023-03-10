$interface = {
	"ip" => "192.168.0.2", 
	"mac" => "52:55:00:4a:70:09", 
	"name" => "eth1"
}

notify {"${interface['ip']} at ${interface['mac']} on ${interface['name']}" : }
