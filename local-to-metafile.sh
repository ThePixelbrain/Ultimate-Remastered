#!/bin/bash

if [[ "$#" -ne 2 ]]; then
    echo "Usage: local-to-metafile.sh <Name> <Path>"
    exit 1
fi

BASEDIR="$(dirname $(realpath "$0"))"
METAFILE="$(dirname "$2")/$1.pw.toml"
LOCALFILE="$(realpath "$2" | awk -F'modpack/' '{print $2}')"
touch "$METAFILE"
echo "name = \"$1\"" >> "$METAFILE"
echo "filename = \"$(basename "$2")\"" >> "$METAFILE"
echo 'side = "both"' >> "$METAFILE"
echo >> "$METAFILE"
echo '[download]' >> "$METAFILE"
echo "url = \"https://ultrem.bedcraft.uk/modpack/$LOCALFILE\"" >> "$METAFILE"
echo 'hash-format = "sha256"' >> "$METAFILE"
echo "hash = \"$(sha256sum "$2" | awk '{print $1}')\"" >> "$METAFILE"

echo "$LOCALFILE" >> "$BASEDIR/modpack/.packwizignore"
sort -fuo "$BASEDIR/modpack/.packwizignore" "$BASEDIR/modpack/.packwizignore"