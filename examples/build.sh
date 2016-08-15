#!/bin/bash
set -e
sed -i "s|<username>|$OSC_USERNAME|g" /root/.oscrc
sed -i "s|<password>|$OSC_PASSWORD|g" /root/.oscrc

pushd osc-resource/home:mmanno/restic

  osc log --csv

  osc service run

popd
