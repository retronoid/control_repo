node default {
}

node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
    owner => 'root',
    }
  ssh_keygen { 'root': }
}

node /^web/ {
  include role::app_server
  ssh_keygen { 'root': }
}

node /^db/ {
  include role::db_server
  ssh_keygen { 'root': }
}
