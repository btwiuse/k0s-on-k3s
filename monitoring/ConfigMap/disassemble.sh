#!/usr/bin/env bash

info(){
  1>&2 echo "[writing to $@]"
}

mkdir -p scripts
cat scripts.yaml | yj | jq '.data|to_entries[]|"\(.key)\n\(.value)\n---"' -r | split-dashes \
| while read file; do
  name="$(cat $file | sed -n 1p)"
  target="scripts/${name}"
  info "${target}"
  (cat $file | sed 1d) > "${target}"
  chmod +x "${target}"
done
