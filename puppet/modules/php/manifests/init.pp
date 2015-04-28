class php {

  package
  {
    ['php5',
      'php5-cli',
      'libapache2-mod-php5',
      'php5-curl',
      'php5-gd',
      'php5-mcrypt',
      'php5-mysql',
      'php5-sqlite',
      'php5-xdebug']:
      ensure  => present,
      require => Package['apache2'],
      notify  => Service['apache2']
  }

  file
  {
    '/etc/php5/apache2/php.ini':
      ensure  => 'present',
      source  => 'puppet:///modules/php/php-apache.ini',
      require => File['/etc/apache2/sites-enabled/wordpress.conf']
  }

  file
  {
    '/etc/php5/cli/php.ini':
      ensure  => 'present',
      source  => 'puppet:///modules/php/php-cli.ini',
      require => File['/etc/apache2/sites-enabled/wordpress.conf']
  }
}