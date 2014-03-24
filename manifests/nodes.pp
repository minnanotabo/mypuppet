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
  class { 'myapache':
    docroot => '/var/www/abcd',
  }
  include tomcat
  tomcat::install { 'example.com-tomcat':
    source        => 'apache-tomcat-6.0.39.tar.gz',
    deploymentdir => '/home/vagrant/apps/apache-tomcat',
    user          => 'vagrant',
    group         => 'vagrant',
    default_webapp_docs        => 'present',
    default_webapp_examples    => 'present',
    default_webapp_hostmanager => 'present',
    default_webapp_manager     => 'present',
    default_webapp_root        => 'present'
  }
  java::setup { 'jdk-6u45-linux-x64':
    source => 'jdk-6u45-linux-x64.bin',
    deploymentdir => '/home/vagrant/jdk6',
    user => 'vagrant',
    pathfile => '/home/vagrant/.bashrc',
  }
}
