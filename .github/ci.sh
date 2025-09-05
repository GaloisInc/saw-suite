#!/usr/bin/env bash
set -Eeuxo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DEPS_DIR="$SCRIPT_DIR/../deps"

clone_saw() {
  pushd "$DEPS_DIR"
  git clone https://github.com/GaloisInc/saw-script.git
  popd
}

clone_saw_and_submods() {
  pushd "$DEPS_DIR"
  git clone https://github.com/GaloisInc/saw-script.git
  cp cabal.project.saw.local saw-script/cabal.project.local
  pushd saw-script
  git submodule update --init
  popd
  popd
}

get_saw_ci_env_var() {
  ENV_VAR_NAME="$1"
  sed -nE "s/  $ENV_VAR_NAME: \"([^\"]*)\"/\1/p" "$DEPS_DIR/saw-script/.github/workflows/ci.yml"
}

COMMAND="$1"
shift

"$COMMAND" "$@"
