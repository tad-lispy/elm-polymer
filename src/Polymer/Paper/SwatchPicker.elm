module Polymer.Paper.SwatchPicker exposing (..)

import Html exposing (Html, node)


{-| This is a simple color picker element that will allow you to choose one
of the Material Design colors from a list of available swatches.

Example:

<paper-swatch-picker></paper-swatch-picker>

<paper-swatch-picker color="{{selectedColor}}"></paper-swatch-picker>

You can configure the color palette being used using the `colorList` array and
the `columnCount` property, which specifies how many "generic" colours (i.e. columns
in the picker) you want to display.

<paper-swatch-picker column-count=5 color-list='["#65a5f2", "#83be54", "#f0d551", "#e5943c", "#a96ddb"]'></paper-swatch-picker>


### Styling

The following custom properties and mixins are available for styling:

Custom property | Description | Default
----------------|-------------|----------
`--paper-swatch-picker-color-size` | The size of each of the color boxes | `20px`
`--paper-swatch-picker-icon-size` | The size of the color picker icon | `24px`
`--paper-swatch-picker-icon` | Mixin applied to the color picker icon | `{}`

-}
swatchPicker : List (Attribute msg) -> List (Html msg) -> Html msg
swatchPicker =
    node "paper-swatch-picker"
