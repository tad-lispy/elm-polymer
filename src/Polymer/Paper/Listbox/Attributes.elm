module Polymer.Paper.Listbox.Attributes exposing (..)

{-| Attributes from component. See <https://www.webcomponents.org/element/PolymerElements/>


# Attributes

@docs activateEvent, attrForItemTitle, attrForSelected, disabled, fallbackSelection, multi, selectable, selectedAttribute, selectedClass, stopKeyboardEventPropagation

-}

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of activate-event attribute
-}
activateEvent : String -> Attribute msg
activateEvent =
    Attributes.string "activate-event"


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



-- TODO: Implement attribute focused-item of type
-- TODO: Implement attribute items of type
-- TODO: Implement attribute key-event-target of type


{-| TODO: Description of multi attribute
-}
multi : Bool -> Attribute msg
multi =
    Attributes.bool "multi"


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
