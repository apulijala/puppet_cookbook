if $::operatingsystem in ["Ubuntu", "Debian"] {
	notify { "Debian Operating System detected " :  }
}
elsif $::operatingsystem in ["RedHat", "CentOS"] {
	notify { "Redhat Operating System detected " :  }
}else {
	notify { "No Opearating system detected " :  }
}
