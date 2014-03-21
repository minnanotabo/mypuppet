node 'raspberrypi' {
  file { '/tmp/hello':
    content => "Hello, world\n",
    owner => "pi",
    group => "pi",
  }
  include nginx
}
node 'debian-7' {
  file { '/tmp/hello':
    content => "Hello, vagrant\n",
    owner => "vagrant",
    group => "vagrant",
  }
  package { 'apache2':
    ensure => installed,
  }
  package { 'jdk':
    ensure => installed,
  }
  package { 'tomcat6':
    ensure => installed,
  }
  package { 'nginx':
    ensure => absent,
  }
}
