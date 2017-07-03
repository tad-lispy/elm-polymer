module Polymer.Paper.Input.Attributes exposing (..)

{-| Attributes from component. See <https://www.webcomponents.org/element/PolymerElements/>


# Attributes

@docs accept, allowedPattern, alwaysFloatLabel, attrForValue, autoValidate, autocapitalize, autocomplete, autocorrect, autofocus, autosave, charCounter, disabled, errorMessage, focused, inputmode, invalid, label, list, max, maxRows, maxlength, min, minlength, multiple, name, noLabelFloat, pattern, placeholder, readonly, required, results, rows, size, step, stopKeyboardEventPropagation, type_, validator, value

-}

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of accept attribute
-}
accept : String -> Attribute msg
accept =
    Attributes.string "accept"


{-| TODO: Description of allowed-pattern attribute
-}
allowedPattern : String -> Attribute msg
allowedPattern =
    Attributes.string "allowed-pattern"


{-| TODO: Description of always-float-label attribute
-}
alwaysFloatLabel : Bool -> Attribute msg
alwaysFloatLabel =
    Attributes.bool "always-float-label"


{-| TODO: Description of attr-for-value attribute
-}
attrForValue : String -> Attribute msg
attrForValue =
    Attributes.string "attr-for-value"


{-| TODO: Description of auto-validate attribute
-}
autoValidate : Bool -> Attribute msg
autoValidate =
    Attributes.bool "auto-validate"


{-| TODO: Description of autocapitalize attribute
-}
autocapitalize : String -> Attribute msg
autocapitalize =
    Attributes.string "autocapitalize"


{-| TODO: Description of autocomplete attribute
-}
autocomplete : String -> Attribute msg
autocomplete =
    Attributes.string "autocomplete"


{-| TODO: Description of autocorrect attribute
-}
autocorrect : String -> Attribute msg
autocorrect =
    Attributes.string "autocorrect"


{-| TODO: Description of autofocus attribute
-}
autofocus : Bool -> Attribute msg
autofocus =
    Attributes.bool "autofocus"


{-| TODO: Description of autosave attribute
-}
autosave : String -> Attribute msg
autosave =
    Attributes.string "autosave"


{-| TODO: Description of char-counter attribute
-}
charCounter : Bool -> Attribute msg
charCounter =
    Attributes.bool "char-counter"


{-| TODO: Description of disabled attribute
-}
disabled : Bool -> Attribute msg
disabled =
    Attributes.bool "disabled"


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


{-| TODO: Description of inputmode attribute
-}
inputmode : String -> Attribute msg
inputmode =
    Attributes.string "inputmode"


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


{-| TODO: Description of list attribute
-}
list : String -> Attribute msg
list =
    Attributes.string "list"


{-| TODO: Description of max attribute
-}
max : String -> Attribute msg
max =
    Attributes.string "max"


{-| TODO: Description of max-rows attribute
-}
maxRows : Float -> Attribute msg
maxRows =
    Attributes.number "max-rows"


{-| TODO: Description of maxlength attribute
-}
maxlength : Float -> Attribute msg
maxlength =
    Attributes.number "maxlength"


{-| TODO: Description of min attribute
-}
min : String -> Attribute msg
min =
    Attributes.string "min"


{-| TODO: Description of minlength attribute
-}
minlength : Float -> Attribute msg
minlength =
    Attributes.number "minlength"


{-| TODO: Description of multiple attribute
-}
multiple : Bool -> Attribute msg
multiple =
    Attributes.bool "multiple"


{-| TODO: Description of name attribute
-}
name : String -> Attribute msg
name =
    Attributes.string "name"


{-| TODO: Description of no-label-float attribute
-}
noLabelFloat : Bool -> Attribute msg
noLabelFloat =
    Attributes.bool "no-label-float"


{-| TODO: Description of pattern attribute
-}
pattern : String -> Attribute msg
pattern =
    Attributes.string "pattern"


{-| TODO: Description of placeholder attribute
-}
placeholder : String -> Attribute msg
placeholder =
    Attributes.string "placeholder"


{-| TODO: Description of readonly attribute
-}
readonly : Bool -> Attribute msg
readonly =
    Attributes.bool "readonly"


{-| TODO: Description of required attribute
-}
required : Bool -> Attribute msg
required =
    Attributes.bool "required"


{-| TODO: Description of results attribute
-}
results : Float -> Attribute msg
results =
    Attributes.number "results"


{-| TODO: Description of rows attribute
-}
rows : Float -> Attribute msg
rows =
    Attributes.number "rows"


{-| TODO: Description of size attribute
-}
size : Float -> Attribute msg
size =
    Attributes.number "size"


{-| TODO: Description of step attribute
-}
step : String -> Attribute msg
step =
    Attributes.string "step"


{-| TODO: Description of stop-keyboard-event-propagation attribute
-}
stopKeyboardEventPropagation : Bool -> Attribute msg
stopKeyboardEventPropagation =
    Attributes.bool "stop-keyboard-event-propagation"


{-| TODO: Description of type attribute
-}
type_ : String -> Attribute msg
type_ =
    Attributes.string "type"


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
