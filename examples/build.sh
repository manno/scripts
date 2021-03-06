#!/bin/bash
set -e
sed -i "s|<username>|$OSC_USERNAME|g" /root/.oscrc
sed -i "s|<password>|$OSC_PASSWORD|g" /root/.oscrc

pushd osc-resource/home:mmanno/restic 1> /dev/null

  touch test
  ls -la

  osc log --xml | tee

  osc rebuild

popd 1> /dev/null

mkdir osc-updated/home:mmanno/
cp -a osc-resource/home:mmanno/restic osc-updated/home:mmanno/
