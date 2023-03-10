class debug_with_path {

  notify { 'FqdnTest':
    withpath => true,
    name     => inline_template("<%=@fqdn %>")
  }

}
include debug_with_path
notify {"Role is ${facts['uptime_days']}": }

if $facts['uptime_days'] > 1 or $facts['kernel'] == "linux"  {
	notify {"Uptime is greater then one and os is linux ": }
}


