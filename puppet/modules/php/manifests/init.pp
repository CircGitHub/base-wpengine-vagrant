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
      source  => 'puppet:///modules/php/php.ini',
      require => Package['php5-xdebug']
  }
}
