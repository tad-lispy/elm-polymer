module Polymer.Paper.Tooltip exposing (..)

import Html exposing (Html, node)


{-| Material design: [Tooltips](https://www.google.com/design/spec/components/tooltips.html)

`<paper-tooltip>` is a label that appears on hover and focus when the user
hovers over an element with the cursor or with the keyboard. It will be centered
to an anchor element specified in the `for` attribute, or, if that doesn't exist,
centered to the parent node containing it. Note that as of `paper-tooltip#2.0.0`,
you must explicitely include the `web-animations` polyfill if you want this
element to work on browsers not implementing the WebAnimations spec.

Example:
// polyfill
<link rel="import" href="../../neon-animation/web-animations.html">

<div style="display:inline-block">
 <button>Click me!</button>
 <paper-tooltip>Tooltip text</paper-tooltip>
 </div>

<div>
 <button id="btn">Click me!</button>
 <paper-tooltip for="btn">Tooltip text</paper-tooltip>
 </div>

The tooltip can be positioned on the top|bottom|left|right of the anchor using
the `position` attribute. The default position is bottom.

<paper-tooltip for="btn" position="left">Tooltip text</paper-tooltip>
<paper-tooltip for="btn" position="top">Tooltip text</paper-tooltip>


### Styling

The following custom properties and mixins are available for styling:

Custom property | Description | Default
----------------|-------------|----------
`--paper-tooltip-background` | The background color of the tooltip | `#616161`
`--paper-tooltip-opacity` | The opacity of the tooltip | `0.9`
`--paper-tooltip-text-color` | The text color of the tooltip | `white`
`--paper-tooltip` | Mixin applied to the tooltip | `{}`

-}
tooltip : List (Attribute msg) -> List (Html msg) -> Html msg
tooltip =
    node "paper-tooltip"
