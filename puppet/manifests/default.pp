
exec 
{ 
    'apt-update':
        command => '/usr/bin/apt-get update'
}

package
{
	['git',
	'curl']:
		ensure => present,
		require => Exec['apt-update']
}

include apache
include mysql
include php
include wordpress