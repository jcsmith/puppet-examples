class puppetagents {

  package { 'puppet' :
    ensure => latest,
  }

 host { 'puppet' :
   ensure => present,
   ip     => '192.168.122.62',
   notify => Service['puppet'],
 }

 service { 'puppet' :
   ensure   => running,
   enable   => true,
   requires => Package['puppet'],
 }
}

