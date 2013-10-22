class ubuntu {
  file { 'apt-synch.sh':
      ensure => present,
      path   => '/usr/local/sbin/apt-synch',
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => 'puppet:///modules/ubuntu/apt-synch.sh',
  }

  file { 'apt-synch.cron':
      ensure  => present,
      path    => '/etc/cron.d/apt-synch',
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => 'puppet:///modules/ubuntu/apt-synch.cron',
      require => File['apt-synch.sh'],
  }

  file { 'add-puppetlabs-repo':
      ensure => present,
      path   => '/usr/local/sbin/add-puppetlabs-repo',
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => 'puppet:///modules/ubuntu/add-puppetlabs-repo',
  }

  exec { 'add-puppetlabs-repo':
    command => 'add-puppetlabs-repo',
    require => File['add-puppetlabs-repo'],
  }
}
