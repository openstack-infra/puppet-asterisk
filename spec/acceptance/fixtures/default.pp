$config = '[modules](+)
; Application modules
load => app_confbridge.so
load => chan_bridge.so'

file { '/tmp/asterisk-modules.conf':
  ensure  => present,
  content => $config,
}

class { 'asterisk':
  modules_conf_source => '/tmp/asterisk-modules.conf',
}
