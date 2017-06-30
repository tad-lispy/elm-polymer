module Polymer.Paper.MenuButton exposing (..)

import Html exposing (Html, Attribute, node)


{-| -}
menuGrowHeightAnimation : List (Attribute msg) -> List (Html msg) -> Html msg
menuGrowHeightAnimation =
    node "paper-menu-grow-height-animation"


{-| -}
menuGrowWidthAnimation : List (Attribute msg) -> List (Html msg) -> Html msg
menuGrowWidthAnimation =
    node "paper-menu-grow-width-animation"


{-| -}
menuShrinkWidthAnimation : List (Attribute msg) -> List (Html msg) -> Html msg
menuShrinkWidthAnimation =
    node "paper-menu-shrink-width-animation"


{-| -}
menuShrinkHeightAnimation : List (Attribute msg) -> List (Html msg) -> Html msg
menuShrinkHeightAnimation =
    node "paper-menu-shrink-height-animation"


{-| Material design: [Dropdown buttons](https://www.google.com/design/spec/components/buttons.html#buttons-dropdown-buttons)

`paper-menu-button` allows one to compose a designated "trigger" element with
another element that represents "content", to create a dropdown menu that
displays the "content" when the "trigger" is clicked.

The child element assigned to the `dropdown-trigger` slot will be used as the
"trigger" element. The child element assigned to the `dropdown-content` slot will be
used as the "content" element.

The `paper-menu-button` is sensitive to its content's `iron-select` events. If
the "content" element triggers an `iron-select` event, the `paper-menu-button`
will close automatically.

Example:

<paper-menu-button>
<paper-icon-button icon="menu" slot="dropdown-trigger"></paper-icon-button>
<paper-listbox slot="dropdown-content">
<paper-item>Share</paper-item>
<paper-item>Settings</paper-item>
<paper-item>Help</paper-item>
</paper-listbox>
</paper-menu-button>


### Styling

The following custom properties and mixins are also available for styling:

Custom property | Description | Default
----------------|-------------|----------
`--paper-menu-button-dropdown-background` | Background color of the paper-menu-button dropdown | `--primary-background-color`
`--paper-menu-button` | Mixin applied to the paper-menu-button | `{}`
`--paper-menu-button-disabled` | Mixin applied to the paper-menu-button when disabled | `{}`
`--paper-menu-button-dropdown` | Mixin applied to the paper-menu-button dropdown | `{}`
`--paper-menu-button-content` | Mixin applied to the paper-menu-button content | `{}`

-}
menuButton : List (Attribute msg) -> List (Html msg) -> Html msg
menuButton =
    node "paper-menu-button"
