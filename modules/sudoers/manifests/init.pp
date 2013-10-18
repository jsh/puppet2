class sudoers {
  file { '/etc/sudoers.d/sudogroup':
    owner  => 'root',
    group  => 'root',
    mode   => '0440',
    source => 'puppet:///modules/sudoers/sudogroup',
  }
}
