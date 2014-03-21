file { 'id_rsa' :
  path => '/home/vagrant/.ssh/id_rsa',
  owner => 'vagrant',
  group => 'vagrant',
  mode => '0600',
  source => '/home/vagrant/mypuppet/id_rsa',
}

file { 'papply' :
  path => '/usr/local/bin/papply',
  owner => 'root',
  group => 'staff',
  mode => '0755',
  source => '/home/vagrant/mypuppet/papply',
}
