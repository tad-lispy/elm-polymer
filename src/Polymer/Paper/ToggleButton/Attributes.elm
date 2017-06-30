module Polymer.Paper.ToggleButton.Attributes exposing (..)

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


{-| TODO: Description of checked attribute
-}
checked : Bool -> Attribute msg
checked =
    Attributes.bool "checked"


{-| TODO: Description of disabled attribute
-}
disabled : Bool -> Attribute msg
disabled =
    Attributes.bool "disabled"


{-| TODO: Description of focused attribute
-}
focused : Bool -> Attribute msg
focused =
    Attributes.bool "focused"


{-| TODO: Description of invalid attribute
-}
invalid : Bool -> Attribute msg
invalid =
    Attributes.bool "invalid"



-- TODO: Implement attribute key-event-target of type


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


{-| TODO: Description of validator attribute
-}
validator : String -> Attribute msg
validator =
    Attributes.string "validator"


{-| TODO: Description of value attribute
-}
value : String -> Attribute msg
value =
    Attributes.string "value"
