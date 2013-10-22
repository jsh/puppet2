class git {
  package { 'git':  ensure => latest }
  package { 'gitg': ensure => latest }
  package { 'git-flow': ensure => latest }
  exec { 'git-set-name':
    command => 'git config --global user.name "SCM"',
  }
  exec { 'git-set-email':
    command => 'git config --global user.email "scm@aircell.com"',
  }
}
