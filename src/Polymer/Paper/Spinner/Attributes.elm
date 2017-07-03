module Polymer.Paper.Spinner.Attributes exposing (..)

{-| Attributes from component. See <https://www.webcomponents.org/element/PolymerElements/>


# Attributes

@docs active, alt

-}

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of active attribute
-}
active : Bool -> Attribute msg
active =
    Attributes.bool "active"


{-| TODO: Description of alt attribute
-}
alt : String -> Attribute msg
alt =
    Attributes.string "alt"
