#
# RhodeCode Control
#


#
# Ensure the installer is downloaded
#

rhodecode-installer:
  file.managed:
    - source: salt://files/installers/RhodeCode-installer-linux-build20170418_2200
    - name: /opt/rhodecode/RhodeCode-installer-linux-latest
    - user: rhodecode
    - group: rhodecode
    - mode: 755
    - require:
      - pkg: postgresql-server

