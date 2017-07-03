module Polymer.Attributes
    exposing
        ( bool
        , number
        , string
        )

{-| Common types of attributes.

Used in `Polyner.*.Attributes` modules. You hopefully won't have to use them directly in your application, but they are exposed just in case.


# Helpers

@docs bool, number, string

-}

import Html exposing (Attribute)
import Html.Attributes exposing (attribute, property)
import Json.Encode


{-| Helper for an attribute that will take a boolean value.

Note that if the value is false, the attribute won't be added to the element, e.g.:

    drawer
        [ bool "opened" False
        ]
        []

Will yield following DOM Element:

```html
<app-drawer></app-drawer>
```

whereas

    drawer
        [ bool "opened" True
        ]
        []

will yield:

```html
<app-drawer opened></app-drawer>
```

-}
bool : String -> Bool -> Attribute msg
bool name value =
    value
        |> Json.Encode.bool
        |> property name


{-| This is just an alias for `Html.Attributes.attribute`
-}
string : String -> String -> Attribute msg
string =
    attribute


{-| Helper for an attribute that will take a numerical value.

    progress [ number "value" 99 ] []

will yield:

```html
<paper-progress value="99"></paper-progress>
```

-}
number : String -> Float -> Attribute msg
number name value =
    value
        |> Json.Encode.float
        |> property name
