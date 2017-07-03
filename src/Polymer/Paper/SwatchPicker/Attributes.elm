module Polymer.Paper.SwatchPicker.Attributes exposing (..)

{-| Attributes from component. See <https://www.webcomponents.org/element/PolymerElements/>


# Attributes

@docs color, columnCount, horizontalAlign, noink, verticalAlign

-}

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of color attribute
-}
color : String -> Attribute msg
color =
    Attributes.string "color"



-- TODO: Implement attribute color-list of type


{-| TODO: Description of column-count attribute
-}
columnCount : Float -> Attribute msg
columnCount =
    Attributes.number "column-count"


{-| TODO: Description of horizontal-align attribute
-}
horizontalAlign : String -> Attribute msg
horizontalAlign =
    Attributes.string "horizontal-align"


{-| TODO: Description of noink attribute
-}
noink : Bool -> Attribute msg
noink =
    Attributes.bool "noink"


{-| TODO: Description of vertical-align attribute
-}
verticalAlign : String -> Attribute msg
verticalAlign =
    Attributes.string "vertical-align"
