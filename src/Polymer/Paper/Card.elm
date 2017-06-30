module Polymer.Paper.Card exposing (..)

import Html exposing (Html, node)


{-| Material design: [Cards](https://www.google.com/design/spec/components/cards.html)

`paper-card` is a container with a drop shadow.

Example:

<paper-card heading="Card Title">
<div class="card-content">Some content</div>
<div class="card-actions">
<paper-button>Some action</paper-button>
</div>
</paper-card>

Example - top card image:

<paper-card heading="Card Title" image="/path/to/image.png" alt="image">
...
</paper-card>


### Accessibility

By default, the `aria-label` will be set to the value of the `heading` attribute.


### Styling

The following custom properties and mixins are available for styling:

Custom property | Description | Default
----------------|-------------|----------
`--paper-card-background-color` | The background color of the card | `--primary-background-color`
`--paper-card-header-color` | The color of the header text | `#000`
`--paper-card-header` | Mixin applied to the card header section | `{}`
`--paper-card-header-text` | Mixin applied to the title in the card header section | `{}`
`--paper-card-header-image` | Mixin applied to the image in the card header section | `{}`
`--paper-card-header-image-text` | Mixin applied to the text overlapping the image in the card header section | `{}`
`--paper-card-content` | Mixin applied to the card content section| `{}`
`--paper-card-actions` | Mixin applied to the card action section | `{}`
`--paper-card` | Mixin applied to the card | `{}`

-}
card : List (Attribute msg) -> List (Html msg) -> Html msg
card =
    node "paper-card"
