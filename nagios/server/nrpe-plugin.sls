{% from "nagios/map.jinja" import nagios with context %}

install the check_nrpe plugin for nagios:
  pkg.installed:
    - name: {{ nagios.nrpe_plugin_pkg }}
