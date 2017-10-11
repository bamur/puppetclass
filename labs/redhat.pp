$os_name = 'RedHat'

if $os_name =~ /RedHat/ {
  notify {' RedHat matched.' :}
}

if $os_name =~ /Red\sHat/ {
  notify {' Red\sHat matched.' :}
}

if $os_name =~ /Red\s*Hat/ {
  notify {' Red\s*Hat matched.' :}
}

if $os_name =~ /Hat/ {
  notify {' Hat matched.' :}
}

if $os_name =~ /^Hat/ {
  notify {' ^Hat matched.' :}
}

if $os_name =~ /Hat$/ {
  notify {' Hat$ matched.' :}
}
