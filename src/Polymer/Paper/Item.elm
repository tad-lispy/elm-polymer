module Polymer.Paper.Item exposing (..)

import Html exposing (Html, Attribute, node)


{-| Material design: [Lists](https://www.google.com/design/spec/components/lists.html)

`<paper-item>` is an interactive list item. By default, it is a horizontal flexbox.

<paper-item>Item</paper-item>

Use this element with `<paper-item-body>` to make Material Design styled two-line and three-line
items.

<paper-item>
<paper-item-body two-line>
<div>Show your status</div>
<div secondary>Your status is visible to everyone</div>
</paper-item-body>
<iron-icon icon="warning"></iron-icon>
</paper-item>

To use `paper-item` as a link, wrap it in an anchor tag. Since `paper-item` will
already receive focus, you may want to prevent the anchor tag from receiving
focus as well by setting its tabindex to -1.

<a href="https://www.polymer-project.org/" tabindex="-1">
<paper-item raised>Polymer Project</paper-item>
</a>

If you are concerned about performance and want to use `paper-item` in a `paper-listbox`
with many items, you can just use a native `button` with the `paper-item` class
applied (provided you have correctly included the shared styles):

<style is="custom-style" include="paper-item-shared-styles"></style>

<paper-listbox>
<button class="paper-item" role="option">Inbox</button>
<button class="paper-item" role="option">Starred</button>
<button class="paper-item" role="option">Sent mail</button>
</paper-listbox>


### Styling

The following custom properties and mixins are available for styling:

Custom property | Description | Default
------------------------------|----------------------------------------------|----------
`--paper-item-min-height` | Minimum height of the item | `48px`
`--paper-item` | Mixin applied to the item | `{}`
`--paper-item-selected-weight`| The font weight of a selected item | `bold`
`--paper-item-selected` | Mixin applied to selected paper-items | `{}`
`--paper-item-disabled-color` | The color for disabled paper-items | `--disabled-text-color`
`--paper-item-disabled` | Mixin applied to disabled paper-items | `{}`
`--paper-item-focused` | Mixin applied to focused paper-items | `{}`
`--paper-item-focused-before` | Mixin applied to :before focused paper-items | `{}`


### Accessibility

This element has `role="listitem"` by default. Depending on usage, it may be more appropriate to set
`role="menuitem"`, `role="menuitemcheckbox"` or `role="menuitemradio"`.

<paper-item role="menuitemcheckbox">
<paper-item-body>
Show your status
</paper-item-body>
<paper-checkbox></paper-checkbox>
</paper-item>

-}
item : List (Attribute msg) -> List (Html msg) -> Html msg
item =
    node "paper-item"


{-| `<paper-icon-item>` is a convenience element to make an item with icon. It is an interactive list
item with a fixed-width icon area, according to Material Design. This is useful if the icons are of
varying widths, but you want the item bodies to line up. Use this like a `<paper-item>`. The child
node with the slot name `item-icon` is placed in the icon area.

<paper-icon-item>
<iron-icon icon="favorite" slot="item-icon"></iron-icon>
Favorite
</paper-icon-item>
<paper-icon-item>
<div class="avatar" slot="item-icon"></div>
Avatar
</paper-icon-item>


### Styling

The following custom properties and mixins are available for styling:

Custom property | Description | Default
------------------------------|------------------------------------------------|----------
`--paper-item-icon-width` | Width of the icon area | `56px`
`--paper-item-icon` | Mixin applied to the icon area | `{}`
`--paper-icon-item` | Mixin applied to the item | `{}`
`--paper-item-selected-weight`| The font weight of a selected item | `bold`
`--paper-item-selected` | Mixin applied to selected paper-items | `{}`
`--paper-item-disabled-color` | The color for disabled paper-items | `--disabled-text-color`
`--paper-item-disabled` | Mixin applied to disabled paper-items | `{}`
`--paper-item-focused` | Mixin applied to focused paper-items | `{}`
`--paper-item-focused-before` | Mixin applied to :before focused paper-items | `{}`

-}
iconItem : List (Attribute msg) -> List (Html msg) -> Html msg
iconItem =
    node "paper-icon-item"


{-| Use `<paper-item-body>` in a `<paper-item>` or `<paper-icon-item>` to make two- or
three- line items. It is a flex item that is a vertical flexbox.

<paper-item>
<paper-item-body two-line>
<div>Show your status</div>
<div secondary>Your status is visible to everyone</div>
</paper-item-body>
</paper-item>

The child elements with the `secondary` attribute is given secondary text styling.


### Styling

The following custom properties and mixins are available for styling:

Custom property | Description | Default
----------------|-------------|----------
`--paper-item-body-two-line-min-height` | Minimum height of a two-line item | `72px`
`--paper-item-body-three-line-min-height` | Minimum height of a three-line item | `88px`
`--paper-item-body-secondary-color` | Foreground color for the `secondary` area | `--secondary-text-color`
`--paper-item-body-secondary` | Mixin applied to the `secondary` area | `{}`

-}
itemBody : List (Attribute msg) -> List (Html msg) -> Html msg
itemBody =
    node "paper-item-body"
