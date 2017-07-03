module Polymer.Paper.DropdownMenu exposing (..)

{-| Elements from paper-dropdown-menu component. See <https://www.webcomponents.org/element/PolymerElements/paper-dropdown-menu>


# Elements

@docs dropdownMenu

-}

import Html exposing (Html, Attribute, node)


{-| Material design: [Dropdown menus](https://www.google.com/design/spec/components/buttons.html#buttons-dropdown-buttons)

`paper-dropdown-menu` is similar to a native browser select element.
`paper-dropdown-menu` works with selectable content. The currently selected
item is displayed in the control. If no item is selected, the `label` is
displayed instead.

Example:

<paper-dropdown-menu label="Your favourite pastry">
<paper-listbox slot="dropdown-content">
<paper-item>Croissant</paper-item>
<paper-item>Donut</paper-item>
<paper-item>Financier</paper-item>
<paper-item>Madeleine</paper-item>
</paper-listbox>
</paper-dropdown-menu>

This example renders a dropdown menu with 4 options.

The child element with the slot `dropdown-content` is used as the dropdown
menu. This can be a [`paper-listbox`](paper-listbox), or any other or
element that acts like an [`iron-selector`](iron-selector).

Specifically, the menu child must fire an
[`iron-select`](iron-selector#event-iron-select) event when one of its
children is selected, and an [`iron-deselect`](iron-selector#event-iron-deselect)
event when a child is deselected. The selected or deselected item must
be passed as the event's `detail.item` property.

Applications can listen for the `iron-select` and `iron-deselect` events
to react when options are selected and deselected.


### Styling

The following custom properties and mixins are also available for styling:

Custom property | Description | Default
----------------|-------------|----------
`--paper-dropdown-menu` | A mixin that is applied to the element host | `{}`
`--paper-dropdown-menu-disabled` | A mixin that is applied to the element host when disabled | `{}`
`--paper-dropdown-menu-ripple` | A mixin that is applied to the internal ripple | `{}`
`--paper-dropdown-menu-button` | A mixin that is applied to the internal menu button | `{}`
`--paper-dropdown-menu-input` | A mixin that is applied to the internal paper input | `{}`
`--paper-dropdown-menu-icon` | A mixin that is applied to the internal icon | `{}`

You can also use any of the `paper-input-container` and `paper-menu-button`
style mixins and custom properties to style the internal input and menu button
respectively.

-}
dropdownMenu : List (Attribute msg) -> List (Html msg) -> Html msg
dropdownMenu =
    node "paper-dropdown-menu"
