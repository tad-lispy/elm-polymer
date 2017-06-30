module Polymer.Attributes
    exposing
        ( bool
        , number
        , string
        )

{-| Common types of attributes.

Used in */Attributes.eml modules

-}

import Html exposing (Attribute)
import Html.Attributes exposing (attribute, property)
import Json.Encode


bool : String -> Bool -> Attribute msg
bool name value =
    value
        |> Json.Encode.bool
        |> property name


string : String -> String -> Attribute msg
string =
    attribute


number : String -> Float -> Attribute msg
number name value =
    value
        |> Json.Encode.float
        |> property name
