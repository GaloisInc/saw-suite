#!/bin/sh

install() {
  PROG=$(cabal list-bin -v0 exe:$1)
  echo "cp $PROG dist/bin/"
  cp $PROG dist/bin/
}

pushd deps/saw-script
saw-version/src/SAWVersion/savegitinfo.sh
popd
cabal build all

rm -rf dist/bin && mkdir -p dist/bin

install cryptol
install saw
install saw-remote-api
install crux-llvm
install crux-mir
install crux-mir-comp
install cryptol-remote-api
install saw-remote-api