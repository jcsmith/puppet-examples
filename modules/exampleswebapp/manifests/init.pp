class exampleswebapp{

  package{ 'apache2' :
    ensure => present,
  }

  package{ 'fortune' :
    ensure => present,
  }


  service { 'apache2':
    ensure  => running,
    enable => true,
    require => Package['apache2'],
  }

  cron{ 'fortune':
    command => '/usr/games/fortune > /var/www/fortune.txt',
    user    => root,
  }


}

