class apt-synch {
  file { 'apt-synch.sh':
      ensure => present,
      path   => '/usr/local/sbin/apt-synch',
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => 'puppet:///modules/apt-synch/apt-synch.sh',
  }

  file { 'apt-synch.cron':
      ensure  => present,
      path    => '/etc/cron.d/apt-synch',
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => 'puppet:///modules/apt-synch/apt-synch.cron',
      require => File['apt-synch.sh'],
  }
}
