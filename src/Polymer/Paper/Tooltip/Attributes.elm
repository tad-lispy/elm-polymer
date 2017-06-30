module Polymer.Paper.Tooltip.Attributes exposing (..)

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


-- TODO: Implement attribute animation-config of type


{-| TODO: Description of animation-delay attribute
-}
animationDelay : Float -> Attribute msg
animationDelay =
    Attributes.number "animation-delay"


{-| TODO: Description of entry-animation attribute
-}
entryAnimation : String -> Attribute msg
entryAnimation =
    Attributes.string "entry-animation"


{-| TODO: Description of exit-animation attribute
-}
exitAnimation : String -> Attribute msg
exitAnimation =
    Attributes.string "exit-animation"


{-| TODO: Description of fit-to-visible-bounds attribute
-}
fitToVisibleBounds : Bool -> Attribute msg
fitToVisibleBounds =
    Attributes.bool "fit-to-visible-bounds"


{-| TODO: Description of for attribute
-}
for : String -> Attribute msg
for =
    Attributes.string "for"


{-| TODO: Description of manual-mode attribute
-}
manualMode : Bool -> Attribute msg
manualMode =
    Attributes.bool "manual-mode"


{-| TODO: Description of margin-top attribute
-}
marginTop : Float -> Attribute msg
marginTop =
    Attributes.number "margin-top"


{-| TODO: Description of offset attribute
-}
offset : Float -> Attribute msg
offset =
    Attributes.number "offset"


{-| TODO: Description of position attribute
-}
position : String -> Attribute msg
position =
    Attributes.string "position"
