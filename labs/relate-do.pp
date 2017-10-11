package{ 'httpd':
  ensure => 'present',
  allow_virtual => 'false',
  before => Service['httpd'],
}
service{'httpd':
  ensure => 'running',
  enable => 'true',
}
