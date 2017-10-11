$dir= '/var/tmp/example'

file { "$dir":
  ensure => 'directory',
  mode => '0755',
}

file { "$dir/public.txt":
  ensure => 'file',
  mode => '0644',
  content => "Here is a variable ${dir} immediately enclosed in text.\n",
}

file { "$dir/secret.txt":
  ensure => 'file',
  mode => '0600',
  content => "The osfamily for this system is $::osfamily.\n",
}


