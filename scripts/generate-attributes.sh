#! /usr/bin/env bash

# This will output Elm code for all elements in a single Polymer component

source "scripts/common.sh"

name="$1"
prefix="$2"

# Output Elm code - header of the attributes module
export name
envsubst < "templates/attributes-header.elm"

jq --compact-output '
  [
    .elements[].attributes[]
    | { name, type }
  ]
    | sort
    | unique
    | .[]
  ' \
| while read -r attribute
  do
    attribute_name=$(
      echo "${attribute}" \
      | jq --raw-output ".name"
    )
    type=$(
      echo "${attribute}" \
      | jq --raw-output ".type"
    )
    attribute_fn=$(
      echo ${attribute_name} \
        | element_to_function_name
      )

    blacklist="
      type
    "
    for keyword in ${blacklist}
    do
      if [[ ${attribute_fn} = ${keyword} ]]
      then
        attribute_fn="${attribute_fn}_"
      fi
    done

    # If there is no template for this type, fallback to unsupported
    template="templates/attribute-${type}.elm"
    if [[ ! -f ${template} ]]
    then
      template="templates/attribute-unsupported.elm"
    fi

    # output some more Elm code - attribute definition:
    export attribute_name attribute_fn
    envsubst < ${template}
  done
