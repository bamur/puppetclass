node default{
  #include ftpcustom
}

node /^server[a-c].lab.example.com$/ {
  include ftpcustom
  include motd
}


