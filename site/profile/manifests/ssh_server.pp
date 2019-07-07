class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRGU1kL0rYeRNKL503uSKdzNrotMkhv3LmE2z/otJtYx+P614UloEQ4DRLzn7GIelMPlC1lyPZPjIRhdleCC9b5PfU2v15aSPxV6Wno32qPSNmhdilLv5yw/3dvDXfJTKU/FnSIrtmNT49QZznGrr9FZdgb6G5fZVlFse3d+P1ML2rR+mkwAC8wcfdymWupt45F4fYrZMO87ZnI98jmE8o//Ev5fRzBWYAT4Q0brcB09k4N5ftyJjxpqQCQHapI6VK45sZB8szxSgrKJ7i3E2KQ1+a3dnOMhKpXwCa0/RQR8WDx/OeF9T06HlPBzO0MI5attQ9H2uRxa29jgrpUonn',
	}
}
