class ftpcustom::config{

file {'/etc/vsftpd/vsftpd.conf':
  ensure => 'file',
  mode => '0644',
  source => 'puppet:///modules/ftpcustom/vsftpd.conf',
}

file {'/etc/vsftpd/custom-banner':
  ensure => 'file',
  mode => '0644',
  source => 'puppet:///modules/ftpcustom/custom-banner',
}

}
