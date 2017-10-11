$disk = $::is_virtual ? {
  'true' => '/dev/vda',
  default => '/dev/sda',
}

notify {'disk':
  message => "value is $disk.",
}

if $::is_virtual {
  file {'/tmp/virtual.txt':
    ensure => 'file',
    content => "This is a virtual system. Disk is ${disk}.\n",
}
}
else{
  file {'/tmp/physical.txt':
   ensure => 'file',
   content => "This is a physical system. Disk is ${disk}.\n",
}
}
