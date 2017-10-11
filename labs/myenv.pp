$username = 'student'

File {
  owner => "$username",
  group => "$username",
}

if $username == 'root' {
  $homedir = "/$username"

} else {

  $homedir = "/home/$username"
     file {"/$homedir/.ssh":
     ensure => 'directory',
     mode => '0700',
}

}

file {"/$homedir/.vimrc":
  ensure => 'file',
  content => "set ai sw=2",
}

file {"/$homedir/.vim":
  ensure => 'directory',
}


  file {"/$homedir/.ssh/authorized_keys":
    ensure => 'file',
    content => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDe/1uoUdrjeotArfPrA5Fs6aMoybNuWAB3P6Re0zIMh+PQAVxknr7h8hgid1D1Ayz7X0eSvaOvDQbX4d9zZ4qApixAJtNGCG68UWkRcLiBVJ5cJk3+q1L0FmNAfGhBl2VVQuHJBu1Pm0KYxc5HjfgznATGwYWlqXhSv+sXzK+fdqGau0DB7DKSkhf7S5i1ybEVxkvYPipzJp+XyRQ5un+rpCsPjOA64UY1i3gTQJks721j82eD0tpPvJVCcWBTcYUW/L9om7GoU67CDgnv6fDBRRVxKWB1srLpP4CZNTfYbRZk/ZRwm3Gtsfn3ayz/w4g7bVRa2QKZ/jb38MDKPdkb student@servera.lab.example.com',
    mode => '0600',
 }
