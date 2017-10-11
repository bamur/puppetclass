package {'vsftpd':
  ensure => 'present',
  allow_virtual => 'false',
}

user {'ftpadmin':
  ensure => 'present',
  home => '/var/ftp',
  shell => '/bin/bash',
  require => Package['vsftpd'],
}

file {['/var/ftp',
        '/var/ftp/pub']:
  owner => 'ftpadmin',
  mode => '755',
}

service {'vsftpd':
  ensure => 'running',
  enable => 'true',
}
