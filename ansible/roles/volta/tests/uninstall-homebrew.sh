#!/bin/bash
#
# Uninstalls Volta as described in the docs at https://docs.volta.sh/advanced/uninstall

# Remove Volta directory
rm -rf $HOME/.volta

# Cleanup files with Volta paths
sed -i "/^export VOLTA_HOME=\"\${HOME}/.volta\"=d/" ~/.bashrcsed -i "/^export VOLTA_HOME=\"${HOME}/.volta\"=d/" ~/.bashrc
sed -i "/^export PATH=\"\$VOLTA_HOME/bin:\$PATH\"=d/" ~/.bashrc