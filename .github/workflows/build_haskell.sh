#!/usr/bin/env bash

set -xe

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TOP_LEVEL_DIR="$SCRIPT_DIR/../.."
DEPS_DIR="$TOP_LEVEL_DIR/deps"

install() {
  PROG=$(cabal list-bin -v0 "exe:$1")
  echo "cp $PROG $TOP_LEVEL_DIR/dist/bin/"
  cp "$PROG" "$TOP_LEVEL_DIR/dist/bin/"
}

cd "$DEPS_DIR/saw-script"
saw-version/src/SAWVersion/savegitinfo.sh
cabal build all

rm -rf "$TOP_LEVEL_DIR/dist/bin" && mkdir -p "$TOP_LEVEL_DIR/dist/bin"

install cryptol
install saw
install saw-remote-api
install crux-llvm
install crux-mir
install crux-mir-comp
install cryptol-remote-api
install saw-remote-api
