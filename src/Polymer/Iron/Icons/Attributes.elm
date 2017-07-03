module Polymer.Iron.Icons.Attributes exposing (..)

{-| Attributes from component. See <https://www.webcomponents.org/element/PolymerElements/>


# Attributes

@docs name, rtlMirroring, size

-}

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of name attribute
-}
name : String -> Attribute msg
name =
    Attributes.string "name"


{-| TODO: Description of rtl-mirroring attribute
-}
rtlMirroring : Bool -> Attribute msg
rtlMirroring =
    Attributes.bool "rtl-mirroring"


{-| TODO: Description of size attribute
-}
size : Float -> Attribute msg
size =
    Attributes.number "size"
