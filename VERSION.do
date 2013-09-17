set -eu
redo-ifchange configure.in
grep -E -o '^VERSION="[^"]+' configure.in | cut -d '"' -f 2
