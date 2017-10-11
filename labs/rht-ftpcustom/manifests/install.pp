class ftpcustom::install{

package{'vsftpd':
  ensure => 'present',
  allow_virtual => 'false',
  }
}
