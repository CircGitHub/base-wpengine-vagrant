class apache {

	exec 
	{ 
		'mod-rewrite':
			command => '/usr/sbin/a2enmod rewrite',
			require => Package['apache2'],
			notify => Service['apache2']
	}

	package 
	{ 
		['apache2', 'apache2-mpm-prefork']:
			ensure  => present,
			require => Exec['apt-update']
	}

	service 
	{ 
		"apache2":
			ensure      => running,
			enable      => true,
			require     => Package['apache2']
	}

	file 
	{
	  '/etc/apache2/sites-available/wordpress.conf':
	    ensure => 'present',
	    source => 'puppet:///modules/apache/vhost.conf',
	    require => Package['apache2']
  }

  file
  {
    '/etc/apache2/sites-enabled/000-default':
      ensure  => 'absent',
      require => Package['apache2']
  }
    
  file
	{
		'/etc/apache2/sites-enabled/wordpress.conf':
		  ensure => 'link',
		  target => '/etc/apache2/sites-available/wordpress.conf',
		  notify => Service['apache2'],
		  require => File['/etc/apache2/sites-available/wordpress.conf', '/etc/apache2/sites-enabled/000-default']
    }
}