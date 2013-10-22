include git
include lvm2
include puppet
include ssh
include sudoers
include tree
include vim-gnome
case $operatingsystem {
  'ubuntu': {
    include $operatingsystem

    Exec {
      path        => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
      environment => 'HOME=/root',
    }
  }
}
