class mysql {

	package
	{
		['mysql-server']:
			ensure  => present,
			require => Package['apache2']
	}

	service
	{
		'mysql':
			ensure  => running,
			require => Package['mysql-server']
	}

	exec
	{
		'create-db':
			command => '/usr/bin/mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress"',
			require => Package['mysql-server']
	}

	exec
	{
		'import db':
			command => '/usr/bin/mysql -u root wordpress < /home/vagrant/src/wordpress/puppet/modules/mysql/files/dump.sql',
			require => Exec['create-db'],
			onlyif  => '/usr/bin/test -e /home/vagrant/src/wordpress/puppet/modules/mysql/files/dump.sql'
	}

	file
	{
		'/etc/mysql/my.cnf':
			ensure  => 'present',
			source  => 'puppet:///modules/mysql/my.cnf',
			require => Package['mysql-server'],
			notify => Service['mysql']
	}
}