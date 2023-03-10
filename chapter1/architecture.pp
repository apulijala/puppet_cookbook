if $::architecture =~ /64/ {
	notify { "Architecture is $::architecture" : 
	}
	notify {"${facts['operatingsystem']}" : }
}
else {
	notify {"upgrade to 64Bit" : }
	fail ("Not 64 Bit") 
}
