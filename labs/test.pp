notify { 'Hello World':
  message => 'Hello World!',
}

user { 'webmaster':
  ensure => 'present',
  home  => '/home/webmaster',
  shell => '/bin/bash',
}

file { '/home/webmaster':
  ensure => 'directory',
  owner => 'webmaster',
  group => 'webmaster',
  mode => '770',
  require => User ['webmaster'],
}

package {'httpd':
  ensure => 'present',
  allow_virtual => 'false',
}

service {'httpd':
  ensure => 'running',
  enable => 'true',
  require => Package ['httpd'],
}
