package{ 'httpd':
  ensure => 'absent',
  allow_virtual => 'false',
}

service{'httpd':
  ensure => 'stopped',
  enable => 'false',
}
