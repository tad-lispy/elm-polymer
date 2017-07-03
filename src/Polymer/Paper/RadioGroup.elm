module Polymer.Paper.RadioGroup exposing (..)

{-| Elements from paper-radio-group component. See <https://www.webcomponents.org/element/PolymerElements/paper-radio-group>


# Elements

@docs radioGroup

-}

import Html exposing (Html, Attribute, node)


{-| Material design: [Radio button](https://www.google.com/design/spec/components/selection-controls.html#selection-controls-radio-button)

`paper-radio-group` allows user to select at most one radio button from a set.
Checking one radio button that belongs to a radio group unchecks any
previously checked radio button within the same group. Use
`selected` to get or set the selected radio button.

The <paper-radio-buttons> inside the group must have the `name` attribute
set.

Example:

<paper-radio-group selected="small">
<paper-radio-button name="small">Small</paper-radio-button>
<paper-radio-button name="medium">Medium</paper-radio-button>
<paper-radio-button name="large">Large</paper-radio-button>
</paper-radio-group>

Radio-button-groups can be made optional, and allow zero buttons to be selected:

<paper-radio-group selected="small" allow-empty-selection>
<paper-radio-button name="small">Small</paper-radio-button>
<paper-radio-button name="medium">Medium</paper-radio-button>
<paper-radio-button name="large">Large</paper-radio-button>
</paper-radio-group>

See <a href="paper-radio-button">paper-radio-button</a> for more
information about `paper-radio-button`.

Custom property | Description | Default
----------------|-------------|----------
`--paper-radio-group-item-padding` | The padding of the item | `12px`

-}
radioGroup : List (Attribute msg) -> List (Html msg) -> Html msg
radioGroup =
    node "paper-radio-group"
