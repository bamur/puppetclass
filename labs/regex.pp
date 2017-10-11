if $::ipaddress =~  /172\.25\.250\.[a-z]+\d/ {
  notify { "Matched." :}
} 
