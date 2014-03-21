class nginx {
  package { 'nginx':
    ensure => '1.2.1-2.2+wheezy2',
  }

  service { 'nginx':
    ensure => running,
    enable => true,
    require => Package['nginx'],
  }
}
