class exampleswebapp{

  package{ 'apache2' :
    ensure => present,
  }

  service { 'apache2':
    ensure  => running,
    enabled => true,
    require => Package['apache2'],
  }

}

