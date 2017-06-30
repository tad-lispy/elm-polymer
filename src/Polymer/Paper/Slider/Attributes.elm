module Polymer.Paper.Slider.Attributes exposing (..)

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of active attribute
-}
active : Bool -> Attribute msg
active =
    Attributes.bool "active"


{-| TODO: Description of aria-active-attribute attribute
-}
ariaActiveAttribute : String -> Attribute msg
ariaActiveAttribute =
    Attributes.string "aria-active-attribute"


{-| TODO: Description of disabled attribute
-}
disabled : Bool -> Attribute msg
disabled =
    Attributes.bool "disabled"


{-| TODO: Description of dragging attribute
-}
dragging : Bool -> Attribute msg
dragging =
    Attributes.bool "dragging"


{-| TODO: Description of editable attribute
-}
editable : Bool -> Attribute msg
editable =
    Attributes.bool "editable"


{-| TODO: Description of expand attribute
-}
expand : Bool -> Attribute msg
expand =
    Attributes.bool "expand"


{-| TODO: Description of focused attribute
-}
focused : Bool -> Attribute msg
focused =
    Attributes.bool "focused"


{-| TODO: Description of immediate-value attribute
-}
immediateValue : Float -> Attribute msg
immediateValue =
    Attributes.number "immediate-value"



-- TODO: Implement attribute key-event-target of type
-- TODO: Implement attribute markers of type


{-| TODO: Description of max attribute
-}
max : Float -> Attribute msg
max =
    Attributes.number "max"


{-| TODO: Description of max-markers attribute
-}
maxMarkers : Float -> Attribute msg
maxMarkers =
    Attributes.number "max-markers"


{-| TODO: Description of min attribute
-}
min : Float -> Attribute msg
min =
    Attributes.number "min"


{-| TODO: Description of name attribute
-}
name : String -> Attribute msg
name =
    Attributes.string "name"


{-| TODO: Description of noink attribute
-}
noink : Bool -> Attribute msg
noink =
    Attributes.bool "noink"


{-| TODO: Description of pin attribute
-}
pin : Bool -> Attribute msg
pin =
    Attributes.bool "pin"


{-| TODO: Description of pointer-down attribute
-}
pointerDown : Bool -> Attribute msg
pointerDown =
    Attributes.bool "pointer-down"


{-| TODO: Description of pressed attribute
-}
pressed : Bool -> Attribute msg
pressed =
    Attributes.bool "pressed"


{-| TODO: Description of ratio attribute
-}
ratio : Float -> Attribute msg
ratio =
    Attributes.number "ratio"


{-| TODO: Description of received-focus-from-keyboard attribute
-}
receivedFocusFromKeyboard : Bool -> Attribute msg
receivedFocusFromKeyboard =
    Attributes.bool "received-focus-from-keyboard"


{-| TODO: Description of required attribute
-}
required : Bool -> Attribute msg
required =
    Attributes.bool "required"


{-| TODO: Description of secondary-progress attribute
-}
secondaryProgress : Float -> Attribute msg
secondaryProgress =
    Attributes.number "secondary-progress"


{-| TODO: Description of snaps attribute
-}
snaps : Bool -> Attribute msg
snaps =
    Attributes.bool "snaps"


{-| TODO: Description of step attribute
-}
step : Float -> Attribute msg
step =
    Attributes.number "step"


{-| TODO: Description of stop-keyboard-event-propagation attribute
-}
stopKeyboardEventPropagation : Bool -> Attribute msg
stopKeyboardEventPropagation =
    Attributes.bool "stop-keyboard-event-propagation"


{-| TODO: Description of toggles attribute
-}
toggles : Bool -> Attribute msg
toggles =
    Attributes.bool "toggles"


{-| TODO: Description of transiting attribute
-}
transiting : Bool -> Attribute msg
transiting =
    Attributes.bool "transiting"


{-| TODO: Description of value attribute
-}
value : Float -> Attribute msg
value =
    Attributes.number "value"
