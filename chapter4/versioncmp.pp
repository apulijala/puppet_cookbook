$app_version = '1.2.20'
$min_version = '1.2.10'

if versioncmp($app_version, $min_version) >= 0 {
	notify { "Version OK" : }
}else {
	notify {"Upgrade neeeded" : }
}
