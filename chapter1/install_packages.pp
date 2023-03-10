$packages = [
	"bash-completion-2.1-8.el7.noarch", 
	"lvm2"
]

package { $packages: 
	ensure => installed
}
