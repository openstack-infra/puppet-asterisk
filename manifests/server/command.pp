# == Class: asterisk::server::command
#
# === Authors
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# === Copyright
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
class asterisk::server::command {
  exec { 'asterisk-module-reload-ais.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['ais.conf'],
  }

  exec { 'asterisk-module-reload-amd.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['amd.conf'],
  }

  exec { 'asterisk-module-reload-asterisk.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['asterisk.conf'],
  }

  exec { 'asterisk-module-reload-calendar.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['calendar.conf'],
  }

  exec { 'asterisk-module-reload-ccss.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['ccss.conf'],
  }

  exec { 'asterisk-module-reload-cdr_adaptive_odbc.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cdr_adaptive_odbc.conf'],
  }

  exec { 'asterisk-module-reload-cdr.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cdr.conf'],
  }

  exec { 'asterisk-module-reload-cdr_custom.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cdr_custom.conf'],
  }

  exec { 'asterisk-module-reload-cdr_manager.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cdr_manager.conf'],
  }

  exec { 'asterisk-module-reload-cdr_syslog.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cdr_syslog.conf'],
  }

  exec { 'asterisk-module-reload-cel.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cel.conf'],
  }

  exec { 'asterisk-module-reload-cel_custom.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cel_custom.conf'],
  }

  exec { 'asterisk-module-reload-cel_odbc.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cel_odbc.conf'],
  }

  exec { 'asterisk-module-reload-chan_dahdi.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['chan_dahdi.conf'],
  }

  exec { 'asterisk-module-reload-cli.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cli.conf'],
  }

  exec { 'asterisk-module-reload-cli_permissions.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['cli_permissions.conf'],
  }

  exec { 'asterisk-module-reload-codecs.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['codecs.conf'],
  }

  exec { 'asterisk-module-reload-dnsmgr.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['dnsmgr.conf'],
  }

  exec { 'asterisk-module-reload-dsp.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['dsp.conf'],
  }

  exec { 'asterisk-module-reload-dundi.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['dundi.conf'],
  }

  exec { 'asterisk-module-reload-enum.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['enum.conf'],
  }

  exec { 'asterisk-module-reload-extconfig.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['extconfig.conf'],
  }

  exec { 'asterisk-module-reload-extensions.conf':
    command     => '/usr/sbin/asterisk -rx "dialplan reload"',
    refreshonly => true,
    require     => File['extensions.conf'],
  }

  exec { 'asterisk-module-reload-features.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['features.conf'],
  }

  exec { 'asterisk-module-reload-func_odbc.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['func_odbc.conf'],
  }

  exec { 'asterisk-module-reload-gtalk.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['gtalk.conf'],
  }

  exec { 'asterisk-module-reload-http.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['http.conf'],
  }

  exec { 'asterisk-module-reload-iax.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['iax.conf'],
  }

  exec { 'asterisk-module-reload-iaxprov.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['iaxprov.conf'],
  }

  exec { 'asterisk-module-reload-indications.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['indications.conf'],
  }

  exec { 'asterisk-module-reload-jabber.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['jabber.conf'],
  }

  exec { 'asterisk-module-reload-logger.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['logger.conf'],
  }

  exec { 'asterisk-module-reload-manager.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['manager.conf'],
  }

  exec { 'asterisk-module-reload-meetme.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['meetme.conf'],
  }

  # Force asterisk to restart to load / unload modules.
  exec { 'asterisk-module-reload-modules.conf':
    command     => '/bin/true',
    notify      => Service['asterisk'],
    refreshonly => true,
    require     => File['modules.conf'],
  }

  exec { 'asterisk-module-reload-musiconhold.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['musiconhold.conf'],
  }

  exec { 'asterisk-module-reload-queuerules.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['queuerules.conf'],
  }

  exec { 'asterisk-module-reload-queues.conf':
    command     => '/usr/sbin/asterisk -rx "module reload app_queue.so"',
    refreshonly => true,
    require     => File['queues.conf'],
  }

  exec { 'asterisk-module-reload-res_curl.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['res_curl.conf'],
  }

  exec { 'asterisk-module-reload-res_fax.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['res_fax.conf'],
  }

  exec { 'asterisk-module-reload-res_ldap.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['res_ldap.conf'],
  }

  exec { 'asterisk-module-reload-res_odbc.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['res_odbc.conf'],
  }

  exec { 'asterisk-module-reload-res_stun_monitor.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['res_stun_monitor.conf'],
  }

  exec { 'asterisk-module-reload-rtp.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['rtp.conf'],
  }

  exec { 'asterisk-module-reload-say.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['say.conf'],
  }

  exec { 'asterisk-module-reload-sip.conf':
    command     => '/usr/sbin/asterisk -rx "module reload chan_sip.so"',
    refreshonly => true,
    require     => File['sip.conf'],
  }

  exec { 'asterisk-module-reload-sip_notify.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['sip_notify.conf'],
  }

  exec { 'asterisk-module-reload-smdi.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['smdi.conf'],
  }

  exec { 'asterisk-module-reload-udptl.conf':
    command     => '/bin/true',
    refreshonly => true,
    require     => File['udptl.conf'],
  }

  exec { 'asterisk-module-reload-voicemail.conf':
    command     => '/usr/sbin/asterisk -rx "module reload app_voicemail.so"',
    refreshonly => true,
    require     => File['voicemail.conf'],
  }
}

# vim:sw=2:ts=2:expandtab
