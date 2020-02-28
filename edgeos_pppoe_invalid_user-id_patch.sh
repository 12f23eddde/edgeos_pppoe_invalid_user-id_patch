#!/bin/bash

DEST[0]=/opt/vyatta/share/vyatta-cfg/templates/interfaces/ethernet/node.tag/pppoe/node.tag/user-id/node.def
DEST[1]=/opt/vyatta/share/vyatta-cfg/templates/interfaces/ethernet/node.tag/vif/node.tag/pppoe/node.tag/user-id/node.def
DEST[2]=/opt/vyatta/share/vyatta-cfg/templates/interfaces/bridge/node.tag/pppoe/node.tag/user-id/node.def
DEST[3]=/opt/vyatta/share/vyatta-cfg/templates/interfaces/bridge/node.tag/vif/node.tag/pppoe/node.tag/user-id/node.def
DEST[4]=/opt/vyatta/share/vyatta-cfg/templates/interfaces/pseudo-ethernet/node.tag/pppoe/node.tag/user-id/node.def
DEST[5]=/opt/vyatta/share/vyatta-cfg/templates/interfaces/switch/node.tag/pppoe/node.tag/user-id/node.def
DEST[6]=/opt/vyatta/share/vyatta-cfg/templates/interfaces/switch/node.tag/vif/node.tag/pppoe/node.tag/user-id/node.def

echo "Add character to pppoe user-id (may starts with \)"
read add_char
for file in "${DEST[@]}"
do
    sudo cp ${file} ${file}.bak
    sudo sed -i "s/+/+${add_char}/g" ${file}
    echo ${file}
done
echo 'Done'
