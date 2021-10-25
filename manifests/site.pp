node default {
  file {'/root/README':
    ensure  => file,
    content => 'THis is a changing file',
    owner   => 'root',
  }
}
