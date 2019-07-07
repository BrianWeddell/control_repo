class profile::base {
  user {'admin':
    ensure => present,
  }
class profile::ssh_server {}
}
