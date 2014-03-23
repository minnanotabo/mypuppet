class myapache($docroot = '/var/www/docroot') {
  class { "apache": }
  apache::vhost { 'default': 
    docroot             => "${docroot}",
    server_name         => false,
    priority            => '',
    template            => 'apache/virtualhost/vhost.conf.erb',
  }
  file { [ "${docroot}" ]:
    ensure => "directory",
    owner  => "vagrant",
    group  => "vagrant",
    mode   => "a+t",
  }

  file { "${docroot}/index.html" :
    owner  => "vagrant",
    group  => "vagrant",
    source => 'puppet:///modules/myapache/index.html'
  }
}

