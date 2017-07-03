module Polymer.Iron.Icons exposing (..)

{-| Elements from iron-icons component. See <https://www.webcomponents.org/element/PolymerElements/iron-icons>


# Elements

@docs icons, iconsetSvg

-}

import Html exposing (Html, Attribute, node)


{-| `iron-icons` is a utility import that includes the definition for the `iron-icon` element, `iron-iconset-svg` element, as well as an import for the default icon set.

The `iron-icons` directory also includes imports for additional icon sets that can be loaded into your project.

Example loading icon set:

<link rel="import" href="../iron-icons/maps-icons.html">

To use an icon from one of these sets, first prefix your `iron-icon` with the icon set name, followed by a colon, ":", and then the icon id.

Example using the directions-bus icon from the maps icon set:

<iron-icon icon="<maps:directions-bus"></iron-icon>>

To load a subset of icons from one of the default `iron-icons` sets, you can
use the [poly-icon](https://poly-icon.appspot.com/) tool. It allows you
to select individual icons, and creates an iconset from them that you can
use directly in your elements.

See [iron-icon](#iron-icon) for more information about working with icons.

See [iron-iconset](#iron-iconset) and [iron-iconset-svg](#iron-iconset-svg) for more information about how to create a custom iconset.

-}
icons : List (Attribute msg) -> List (Html msg) -> Html msg
icons =
    node "iron-icons"


{-| The `iron-iconset-svg` element allows users to define their own icon sets
that contain svg icons. The svg icon elements should be children of the
`iron-iconset-svg` element. Multiple icons should be given distinct id's.

Using svg elements to create icons has a few advantages over traditional
bitmap graphics like jpg or png. Icons that use svg are vector based so
they are resolution independent and should look good on any device. They
are stylable via css. Icons can be themed, colorized, and even animated.

Example:

<iron-iconset-svg name="my-svg-icons" size="24">
<svg>
<defs>
<g id="shape">
<rect x="12" y="0" width="12" height="24" />
<circle cx="12" cy="12" r="12" />
</g>
</defs>
</svg>
</iron-iconset-svg>

This will automatically register the icon set "my-svg-icons" to the iconset
database. To use these icons from within another element, make a
`iron-iconset` element and call the `byId` method
to retrieve a given iconset. To apply a particular icon inside an
element use the `applyIcon` method. For example:

iconset.applyIcon(iconNode, 'car');

-}
iconsetSvg : List (Attribute msg) -> List (Html msg) -> Html msg
iconsetSvg =
    node "iron-iconset-svg"
