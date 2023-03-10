if $facts['timezone'] == "UTC" {
	notify { "Timezone is Universal Coordinated Time" : }
}elsif $facts['timezone'] == "GMT" {
	notify {"Timzone is Greenwich Mean Time": }
}else {
	notify {"Timezone is not UTC or GMT": }
}
