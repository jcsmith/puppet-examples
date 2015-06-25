class examplesntp {
  class { '::ntp':
    servers  => ['pool.ntp.org'],
    restrict => ['127.0.0.1'],
  }
}

