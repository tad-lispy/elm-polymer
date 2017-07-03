#! /usr/bin/env bash

# This will output Elm code for all elements in a single Polymer component

source "scripts/common.sh"

name="$1"
prefix="$2"
component="$3"

# TODO: Get list of elements for @docs references
# Output Elm code - header of the elements module
export name component
envsubst < "templates/elements-header.elm"

jq --compact-output ".elements[] " \
| while read -r element
  do
    tagname=$(
      echo "${element}" \
        | jq --raw-output ".tagname"
    )
    description=$(
      echo "${element}" \
        | jq --raw-output ".description"
    )
    element_fn=$(
      echo ${tagname} \
        | drop_prefix ${prefix} \
        | element_to_function_name
    )

    # Write some Elm code - single element definition:
    export tagname description element_fn
    envsubst < "templates/element.elm"
  done
