file { 'papply' :
  path => '/usr/local/bin/papply',
  owner => 'root',
  group => 'staff',
  mode => '0755',
  source => '/home/vagrant/mypuppet/papply',
}
