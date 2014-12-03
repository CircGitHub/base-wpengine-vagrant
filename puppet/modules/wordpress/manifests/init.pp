class wordpress {

  file
  {
    '/home/vagrant/src/wordpress/wp-config.php':
      ensure => 'present',
      source => 'puppet:///modules/wordpress/wp-config.php',
      owner   => "vagrant",
      group   => "vagrant",
      mode    => 777
  }

  file
  {
    '/home/vagrant/permissions.sh':
      ensure => 'present',
      source => 'puppet:///modules/wordpress/permissions.sh',
      owner   => "vagrant",
      group   => "vagrant",
      mode    => 775
  }

  exec
  {
    'general permissions':
      command => '/bin/chmod -R 777 /home/vagrant/src/wordpress/wp-content',
      onlyif  => '/usr/bin/test -e /home/vagrant/src/wordpress/index.php'
  }

  file
  {
    '/home/vagrant/src/wordpress/.htaccess':
      ensure => 'present',
      source => 'puppet:///modules/wordpress/.htaccess',
      owner   => "vagrant",
      group   => "vagrant",
      mode    => 777
  }
}