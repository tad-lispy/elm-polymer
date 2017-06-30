module Polymer.Paper.Tabs.Attributes exposing (..)

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of activate-event attribute
-}
activateEvent : String -> Attribute msg
activateEvent =
    Attributes.string "activate-event"


{-| TODO: Description of active attribute
-}
active : Bool -> Attribute msg
active =
    Attributes.bool "active"


{-| TODO: Description of align-bottom attribute
-}
alignBottom : Bool -> Attribute msg
alignBottom =
    Attributes.bool "align-bottom"


{-| TODO: Description of aria-active-attribute attribute
-}
ariaActiveAttribute : String -> Attribute msg
ariaActiveAttribute =
    Attributes.string "aria-active-attribute"


{-| TODO: Description of attr-for-item-title attribute
-}
attrForItemTitle : String -> Attribute msg
attrForItemTitle =
    Attributes.string "attr-for-item-title"


{-| TODO: Description of attr-for-selected attribute
-}
attrForSelected : String -> Attribute msg
attrForSelected =
    Attributes.string "attr-for-selected"


{-| TODO: Description of autoselect attribute
-}
autoselect : Bool -> Attribute msg
autoselect =
    Attributes.bool "autoselect"


{-| TODO: Description of autoselect-delay attribute
-}
autoselectDelay : Float -> Attribute msg
autoselectDelay =
    Attributes.number "autoselect-delay"


{-| TODO: Description of disable-drag attribute
-}
disableDrag : Bool -> Attribute msg
disableDrag =
    Attributes.bool "disable-drag"


{-| TODO: Description of disabled attribute
-}
disabled : Bool -> Attribute msg
disabled =
    Attributes.bool "disabled"


{-| TODO: Description of fallback-selection attribute
-}
fallbackSelection : String -> Attribute msg
fallbackSelection =
    Attributes.string "fallback-selection"


{-| TODO: Description of fit-container attribute
-}
fitContainer : Bool -> Attribute msg
fitContainer =
    Attributes.bool "fit-container"


{-| TODO: Description of focused attribute
-}
focused : Bool -> Attribute msg
focused =
    Attributes.bool "focused"



-- TODO: Implement attribute focused-item of type


{-| TODO: Description of hide-scroll-buttons attribute
-}
hideScrollButtons : Bool -> Attribute msg
hideScrollButtons =
    Attributes.bool "hide-scroll-buttons"



-- TODO: Implement attribute items of type
-- TODO: Implement attribute key-event-target of type


{-| TODO: Description of link attribute
-}
link : Bool -> Attribute msg
link =
    Attributes.bool "link"


{-| TODO: Description of multi attribute
-}
multi : Bool -> Attribute msg
multi =
    Attributes.bool "multi"


{-| TODO: Description of no-bar attribute
-}
noBar : Bool -> Attribute msg
noBar =
    Attributes.bool "no-bar"


{-| TODO: Description of no-slide attribute
-}
noSlide : Bool -> Attribute msg
noSlide =
    Attributes.bool "no-slide"


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


{-| TODO: Description of scrollable attribute
-}
scrollable : Bool -> Attribute msg
scrollable =
    Attributes.bool "scrollable"


{-| TODO: Description of selectable attribute
-}
selectable : String -> Attribute msg
selectable =
    Attributes.string "selectable"



-- TODO: Implement attribute selected of type


{-| TODO: Description of selected-attribute attribute
-}
selectedAttribute : String -> Attribute msg
selectedAttribute =
    Attributes.string "selected-attribute"


{-| TODO: Description of selected-class attribute
-}
selectedClass : String -> Attribute msg
selectedClass =
    Attributes.string "selected-class"



-- TODO: Implement attribute selected-item of type
-- TODO: Implement attribute selected-items of type
-- TODO: Implement attribute selected-values of type


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
