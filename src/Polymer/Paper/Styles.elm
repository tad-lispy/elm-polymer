module Polymer.Paper.Styles exposing (..)

{-| Elements from paper-styles component. See <https://www.webcomponents.org/element/PolymerElements/paper-styles>


# Elements

@docs styles

-}

import Html exposing (Html, Attribute, node)


{-| The `<paper-styles>` component provides simple ways to use Material Design CSS styles
in your application. The following imports are available:

1.  [color.html](https://github.com/PolymerElements/paper-styles/blob/master/color.html):
    a complete list of the colors defined in the Material Design [palette](https://www.google.com/design/spec/style/color.html)

2.  [default-theme.html](https://github.com/PolymerElements/paper-styles/blob/master/default-theme.html): text,
    background and accent colors that match the default Material Design theme

3.  [shadow.html](https://github.com/PolymerElements/paper-styles/blob/master/shadow.html): Material Design
    [elevation](https://www.google.com/design/spec/what-is-material/elevation-shadows.html) and shadow styles

4.  [typography.html](https://github.com/PolymerElements/paper-styles/blob/master/typography.html):
    Material Design [font](http://www.google.com/design/spec/style/typography.html#typography-styles) styles and sizes

5.  [demo-pages.html](https://github.com/PolymerElements/paper-styles/blob/master/demo-pages.html): generic styles
    used in the PolymerElements demo pages

We recommend importing each of these individual files, and using the style mixins
available in each ones, rather than the aggregated `paper-styles.html` as a whole.

-}
styles : List (Attribute msg) -> List (Html msg) -> Html msg
styles =
    node "paper-styles"
