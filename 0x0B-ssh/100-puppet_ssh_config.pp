#!/usr/bin/env bash
# using puppet to edit configuration file

file {'ect/ssh/ssh_config':
	ensure => present,

content =>"
	#SSH client config
	host*
	identityFile ~/.ssh/school
	passwordAuthentication no
}
