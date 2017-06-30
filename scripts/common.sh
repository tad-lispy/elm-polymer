#! /usr/bin/env bash

# Common environment variables and functions for scripts

set -euo pipefail
# set -vx # Debug output - a lot of noise :)

# Note: you need sed with GNU extensions and GNU gettext. On OSX run:
#
#     brew install gnu-sed --with-default-names
#     brew install gettext
#
# Follow printed instructions re PATH

function element_to_function_name {
  # app-layout -> appLayout
  sed 's/-\(\w\)/\U\1/g'
}

function titelize {
  # appLayout -> AppLayout
  sed 's/\b\(\w\)/\U\1/g'
}

function component_to_module_name {
  # paper-icon-button -> Paper.IconButton
  # Steps:
  #   1. split on '-'
  #   2. Titelize each token
  #   3. Append '.' to first token
  #   3. Join all tokens together (remove spaces)

  sed -r 's/\-/ /g' \
    | titelize \
    | sed -r 's/^(\w+)/Polymer.\1\./' \
    | sed -r 's/ //g'
}

function module_to_path {
  sed -r "
    s/\./\//g
    s/./src\/&/
    s/$/\.elm/
  "
}

function drop_prefix {
  prefix=$1
  sed -r "s/^${prefix}-//"
}

function outdent {
  sed -r "s/^ {$1}//"
}
