node 'raspberrypi' {
  file { '/tmp/hello':
    content => "Hello, world\n",
    owner => "pi",
    group => "pi",
  }
  include nginx
}
