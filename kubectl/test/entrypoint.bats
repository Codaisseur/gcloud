#!/usr/bin/env bats

PATH="$PATH:$BATS_TEST_DIRNAME/bin"

function setup() {
  # Ensure GITHUB_WORKSPACE is set
  export GITHUB_WORKSPACE="."
}

@test "kubectl runs successfully" {
  ls
  run kubectl help
  echo "$output"
  [ "$status" -eq 0 ]
}
