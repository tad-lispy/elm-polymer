module Polymer.Paper.DropdownMenu.Attributes exposing (..)

{-| Attributes from component. See <https://www.webcomponents.org/element/PolymerElements/>


# Attributes

@docs active, allowOutsideScroll, alwaysFloatLabel, ariaActiveAttribute, disabled, dynamicAlign, errorMessage, focused, horizontalAlign, invalid, label, name, noAnimations, noLabelFloat, opened, placeholder, pointerDown, pressed, receivedFocusFromKeyboard, required, restoreFocusOnClose, selectedItemLabel, stopKeyboardEventPropagation, toggles, validator, value, verticalAlign

-}

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of active attribute
-}
active : Bool -> Attribute msg
active =
    Attributes.bool "active"


{-| TODO: Description of allow-outside-scroll attribute
-}
allowOutsideScroll : Bool -> Attribute msg
allowOutsideScroll =
    Attributes.bool "allow-outside-scroll"


{-| TODO: Description of always-float-label attribute
-}
alwaysFloatLabel : Bool -> Attribute msg
alwaysFloatLabel =
    Attributes.bool "always-float-label"


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


{-| TODO: Description of dynamic-align attribute
-}
dynamicAlign : Bool -> Attribute msg
dynamicAlign =
    Attributes.bool "dynamic-align"


{-| TODO: Description of error-message attribute
-}
errorMessage : String -> Attribute msg
errorMessage =
    Attributes.string "error-message"


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


{-| TODO: Description of invalid attribute
-}
invalid : Bool -> Attribute msg
invalid =
    Attributes.bool "invalid"



-- TODO: Implement attribute key-event-target of type


{-| TODO: Description of label attribute
-}
label : String -> Attribute msg
label =
    Attributes.string "label"


{-| TODO: Description of name attribute
-}
name : String -> Attribute msg
name =
    Attributes.string "name"


{-| TODO: Description of no-animations attribute
-}
noAnimations : Bool -> Attribute msg
noAnimations =
    Attributes.bool "no-animations"


{-| TODO: Description of no-label-float attribute
-}
noLabelFloat : Bool -> Attribute msg
noLabelFloat =
    Attributes.bool "no-label-float"


{-| TODO: Description of opened attribute
-}
opened : Bool -> Attribute msg
opened =
    Attributes.bool "opened"


{-| TODO: Description of placeholder attribute
-}
placeholder : String -> Attribute msg
placeholder =
    Attributes.string "placeholder"


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


{-| TODO: Description of restore-focus-on-close attribute
-}
restoreFocusOnClose : Bool -> Attribute msg
restoreFocusOnClose =
    Attributes.bool "restore-focus-on-close"



-- TODO: Implement attribute selected-item of type


{-| TODO: Description of selected-item-label attribute
-}
selectedItemLabel : String -> Attribute msg
selectedItemLabel =
    Attributes.string "selected-item-label"


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


{-| TODO: Description of vertical-align attribute
-}
verticalAlign : String -> Attribute msg
verticalAlign =
    Attributes.string "vertical-align"
