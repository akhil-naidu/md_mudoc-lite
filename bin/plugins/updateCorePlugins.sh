#!/bin/sh

set -e

for dir in node_modules/ep_*; do
  dir=${dir#node_modules/}
  [ "$dir" != md_mudoc-lite ] || continue
  node src/bin/plugins/checkPlugin.js "$dir" autopush
done
