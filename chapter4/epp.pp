$message = "Jaya Guru Datta and Sree Guru Datta !!"
file { "/tmp/epp_test" : 
	content => epp("/root/puppet_cookbook/chapter4/epp-test.epp")
}
