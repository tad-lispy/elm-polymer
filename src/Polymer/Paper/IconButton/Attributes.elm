module Polymer.Paper.IconButton.Attributes exposing (..)

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


{-| TODO: Description of focused attribute
-}
focused : Bool -> Attribute msg
focused =
    Attributes.bool "focused"


{-| TODO: Description of icon attribute
-}
icon : String -> Attribute msg
icon =
    Attributes.string "icon"



-- TODO: Implement attribute key-event-target of type


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


{-| TODO: Description of src attribute
-}
src : String -> Attribute msg
src =
    Attributes.string "src"


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
