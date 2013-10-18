  class apt-synch {
  file { 'apt-synch':
      ensure  => present,
      path    => '/usr/local/sbin/apt-synch',
      owner   => 'root',
      group   => 'root',
      mode    => '0755',
      content => '#!/bin/bash -eu

for i in update dist-upgrade autoremove; do
  apt-get -y $i
done
';
  }

  file { 'apt-synch.cron':
      ensure  => present,
      path    => '/etc/cron.d/apt-synch',
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      require => File['apt-synch'],
      content => '@midnight root /usr/local/sbin/apt-synch
';
  }
}
