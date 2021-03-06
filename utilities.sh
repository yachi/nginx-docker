#!/bin/bash
set -e
source /nd_build/buildconfig

## Many Ruby gems and NPM packages contain native extensions and require a compiler.
run minimal_apt_get_install build-essential
## Seems the tzdata is missing in the baseimage for Rails to work
run minimal_apt_get_install tzdata
## Bundler has to be able to pull dependencies from git.
run minimal_apt_get_install git
