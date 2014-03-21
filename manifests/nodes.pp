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
  include nginx
}
