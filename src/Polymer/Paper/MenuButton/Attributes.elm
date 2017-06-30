module Polymer.Paper.MenuButton.Attributes exposing (..)

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of allow-outside-scroll attribute
-}
allowOutsideScroll : Bool -> Attribute msg
allowOutsideScroll =
    Attributes.bool "allow-outside-scroll"



-- TODO: Implement attribute animation-timing of type
-- TODO: Implement attribute close-animation-config of type


{-| TODO: Description of close-on-activate attribute
-}
closeOnActivate : Bool -> Attribute msg
closeOnActivate =
    Attributes.bool "close-on-activate"


{-| TODO: Description of disabled attribute
-}
disabled : Bool -> Attribute msg
disabled =
    Attributes.bool "disabled"


{-| TODO: Description of dynamic-align attribute
-}
dynamicAlign : Bool -> Attribute msg
dynamicAlign =
    Attributes.bool "dynamic-align"


{-| TODO: Description of focused attribute
-}
focused : Bool -> Attribute msg
focused =
    Attributes.bool "focused"


{-| TODO: Description of horizontal-align attribute
-}
horizontalAlign : String -> Attribute msg
horizontalAlign =
    Attributes.string "horizontal-align"


{-| TODO: Description of horizontal-offset attribute
-}
horizontalOffset : Float -> Attribute msg
horizontalOffset =
    Attributes.number "horizontal-offset"


{-| TODO: Description of ignore-select attribute
-}
ignoreSelect : Bool -> Attribute msg
ignoreSelect =
    Attributes.bool "ignore-select"



-- TODO: Implement attribute key-event-target of type


{-| TODO: Description of no-animations attribute
-}
noAnimations : Bool -> Attribute msg
noAnimations =
    Attributes.bool "no-animations"


{-| TODO: Description of no-overlap attribute
-}
noOverlap : Bool -> Attribute msg
noOverlap =
    Attributes.bool "no-overlap"



-- TODO: Implement attribute open-animation-config of type


{-| TODO: Description of opened attribute
-}
opened : Bool -> Attribute msg
opened =
    Attributes.bool "opened"


{-| TODO: Description of restore-focus-on-close attribute
-}
restoreFocusOnClose : Bool -> Attribute msg
restoreFocusOnClose =
    Attributes.bool "restore-focus-on-close"


{-| TODO: Description of stop-keyboard-event-propagation attribute
-}
stopKeyboardEventPropagation : Bool -> Attribute msg
stopKeyboardEventPropagation =
    Attributes.bool "stop-keyboard-event-propagation"


{-| TODO: Description of vertical-align attribute
-}
verticalAlign : String -> Attribute msg
verticalAlign =
    Attributes.string "vertical-align"


{-| TODO: Description of vertical-offset attribute
-}
verticalOffset : Float -> Attribute msg
verticalOffset =
    Attributes.number "vertical-offset"
