module Polymer.Paper.Progress.Attributes exposing (..)

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of disabled attribute
-}
disabled : Bool -> Attribute msg
disabled =
    Attributes.bool "disabled"


{-| TODO: Description of indeterminate attribute
-}
indeterminate : Bool -> Attribute msg
indeterminate =
    Attributes.bool "indeterminate"


{-| TODO: Description of max attribute
-}
max : Float -> Attribute msg
max =
    Attributes.number "max"


{-| TODO: Description of min attribute
-}
min : Float -> Attribute msg
min =
    Attributes.number "min"


{-| TODO: Description of ratio attribute
-}
ratio : Float -> Attribute msg
ratio =
    Attributes.number "ratio"


{-| TODO: Description of secondary-progress attribute
-}
secondaryProgress : Float -> Attribute msg
secondaryProgress =
    Attributes.number "secondary-progress"


{-| TODO: Description of secondary-ratio attribute
-}
secondaryRatio : Float -> Attribute msg
secondaryRatio =
    Attributes.number "secondary-ratio"


{-| TODO: Description of step attribute
-}
step : Float -> Attribute msg
step =
    Attributes.number "step"


{-| TODO: Description of value attribute
-}
value : Float -> Attribute msg
value =
    Attributes.number "value"
