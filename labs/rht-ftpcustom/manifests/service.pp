class ftpcustom::service{

service {'vsftpd':
  ensure => 'running',
  enable => 'true',
  require => Package['vsftpd'],
  }
}


