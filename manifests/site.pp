node default {
  }
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    #content => $facts['os.family']
    content => "System uptime in seconds is $facts['system_uptime.seconds']."
  }
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
