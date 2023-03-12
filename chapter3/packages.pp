$pkgs = [
   "cron", 
   "sudo", 
   "lsof", 
   "rubygems", 
   "unzip"
]

package {
    $pkgs: 
	ensure => installed
}
