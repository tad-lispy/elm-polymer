module Polymer.Paper.Spinner exposing (..)

import Html exposing (Html, node)


{-| Material design: [Progress & activity](https://www.google.com/design/spec/components/progress-activity.html)

Element providing a multiple color material design circular spinner.

<paper-spinner active></paper-spinner>

The default spinner cycles between four layers of colors; by default they are
blue, red, yellow and green. It can be customized to cycle between four different
colors. Use <paper-spinner-lite> for single color spinners.


### Accessibility

Alt attribute should be set to provide adequate context for accessibility. If not provided,
it defaults to 'loading'.
Empty alt can be provided to mark the element as decorative if alternative content is provided
in another form (e.g. a text block following the spinner).

<paper-spinner alt="Loading contacts list" active></paper-spinner>


### Styling

The following custom properties and mixins are available for styling:

Custom property | Description | Default
----------------|-------------|----------
`--paper-spinner-layer-1-color` | Color of the first spinner rotation | `--google-blue-500`
`--paper-spinner-layer-2-color` | Color of the second spinner rotation | `--google-red-500`
`--paper-spinner-layer-3-color` | Color of the third spinner rotation | `--google-yellow-500`
`--paper-spinner-layer-4-color` | Color of the fourth spinner rotation | `--google-green-500`
`--paper-spinner-stroke-width` | The width of the spinner stroke | 3px

-}
spinner : List (Attribute msg) -> List (Html msg) -> Html msg
spinner =
    node "paper-spinner"


{-| Material design: [Progress & activity](https://www.google.com/design/spec/components/progress-activity.html)

Element providing a single color material design circular spinner.

<paper-spinner-lite active></paper-spinner-lite>

The default spinner is blue. It can be customized to be a different color.


### Accessibility

Alt attribute should be set to provide adequate context for accessibility. If not provided,
it defaults to 'loading'.
Empty alt can be provided to mark the element as decorative if alternative content is provided
in another form (e.g. a text block following the spinner).

<paper-spinner-lite alt="Loading contacts list" active></paper-spinner-lite>


### Styling

The following custom properties and mixins are available for styling:

Custom property | Description | Default
----------------|-------------|----------
`--paper-spinner-color` | Color of the spinner | `--google-blue-500`
`--paper-spinner-stroke-width` | The width of the spinner stroke | 3px

-}
spinnerLite : List (Attribute msg) -> List (Html msg) -> Html msg
spinnerLite =
    node "paper-spinner-lite"
