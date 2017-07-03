module Polymer.Paper.Toolbar.Attributes exposing (..)

{-| Attributes from component. See <https://www.webcomponents.org/element/PolymerElements/>


# Attributes

@docs bottomJustify, justify, middleJustify

-}

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of bottom-justify attribute
-}
bottomJustify : String -> Attribute msg
bottomJustify =
    Attributes.string "bottom-justify"


{-| TODO: Description of justify attribute
-}
justify : String -> Attribute msg
justify =
    Attributes.string "justify"


{-| TODO: Description of middle-justify attribute
-}
middleJustify : String -> Attribute msg
middleJustify =
    Attributes.string "middle-justify"
