class wordpress {

  file
  {
    '/vagrant/wp-config.php':
      ensure => 'present',
      source => 'puppet:///modules/wordpress/wp-config.php',
      owner   => "vagrant",
      group   => "vagrant",
      mode    => 777
  }

  exec
  {
    'general permissions':
      command => '/bin/chmod -R 777 /vagrant/wp-content',
      onlyif  => '/usr/bin/test -e /vagrant/index.php'
  }

  file
  {
    '/vagrant/.htaccess':
      ensure => 'present',
      source => 'puppet:///modules/wordpress/.htaccess',
      owner   => "vagrant",
      group   => "vagrant",
      mode    => 777
  }
}