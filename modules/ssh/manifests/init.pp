class ssh {
  package {'openssh-server': ensure => latest }
  package {'ssh': ensure => latest }
}
