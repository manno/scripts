#!/bin/bash
set -e
sed -i "s|<username>|$OSC_USERNAME|g" /root/.oscrc
sed -i "s|<password>|$OSC_PASSWORD|g" /root/.oscrc

pushd osc-resource/home:mmanno/restic 1> /dev/null

  osc log --xml | tee

  osc service run

popd 1> /dev/null
