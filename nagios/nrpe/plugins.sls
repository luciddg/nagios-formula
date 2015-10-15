{% from "nagios/map.jinja" import nrpe with context %}

{# This will install any custom (unpackaged) plugins you've got in salt #}

{{ nrpe.plugin_dir }}:
  file.recurse:
    - source: salt://nagios/nrpe/files/plugins/
    - clean: False
    - file_mode: 0755
