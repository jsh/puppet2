class puppet {
  package { 'puppet':
    ensure  => latest,
  }

  package { 'puppet-lint':
    ensure  => latest,
  }
}
