#!/bin/bash

set -e
set -x

tgz_name=parallel_studio_xe_2016_composer_edition_update2
SILENT_CFG=`pwd`/silent.cfg

wget -O- http://redhawk.lanl.gov:8000/${tgz_name}.tgz | tar xzf -

echo "config file:"
cat ${SILENT_CFG}
echo "Installing"

bash ${tgz_name}/install.sh \
    -s "${SILENT_CFG}" \
    --cli-mode \
    --user-mode
rm -r ${tgz_name}
