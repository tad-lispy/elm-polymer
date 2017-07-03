module Polymer.App.Layout.Attributes exposing (..)

{-| Attributes from component. See <https://www.webcomponents.org/element/PolymerElements/>


# Attributes

@docs align, disabled, condenses, disableSwipe, effects, fixed, forceNarrow, hasScrollingRegion, narrow, noFocusTrap, opened, openedWhenNarrow, persistent, position, responsiveWidth, reveals, shadow, swipeOpen, threshold, thresholdTriggered, transitionDuration

-}

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of align attribute
-}
align : String -> Attribute msg
align =
    Attributes.string "align"


{-| TODO: Description of condenses attribute
-}
condenses : Bool -> Attribute msg
condenses =
    Attributes.bool "condenses"


{-| TODO: Description of disable-swipe attribute
-}
disableSwipe : Bool -> Attribute msg
disableSwipe =
    Attributes.bool "disable-swipe"


{-| TODO: Description of disabled attribute
-}
disabled : Bool -> Attribute msg
disabled =
    Attributes.bool "disabled"


{-| TODO: Description of effects attribute
-}
effects : String -> Attribute msg
effects =
    Attributes.string "effects"



-- TODO: Implement attribute effects-config of type


{-| TODO: Description of fixed attribute
-}
fixed : Bool -> Attribute msg
fixed =
    Attributes.bool "fixed"


{-| TODO: Description of force-narrow attribute
-}
forceNarrow : Bool -> Attribute msg
forceNarrow =
    Attributes.bool "force-narrow"


{-| TODO: Description of has-scrolling-region attribute
-}
hasScrollingRegion : Bool -> Attribute msg
hasScrollingRegion =
    Attributes.bool "has-scrolling-region"


{-| TODO: Description of narrow attribute
-}
narrow : Bool -> Attribute msg
narrow =
    Attributes.bool "narrow"


{-| TODO: Description of no-focus-trap attribute
-}
noFocusTrap : Bool -> Attribute msg
noFocusTrap =
    Attributes.bool "no-focus-trap"


{-| TODO: Description of opened attribute
-}
opened : Bool -> Attribute msg
opened =
    Attributes.bool "opened"


{-| TODO: Description of opened-when-narrow attribute
-}
openedWhenNarrow : Bool -> Attribute msg
openedWhenNarrow =
    Attributes.bool "opened-when-narrow"


{-| TODO: Description of persistent attribute
-}
persistent : Bool -> Attribute msg
persistent =
    Attributes.bool "persistent"


{-| TODO: Description of position attribute
-}
position : String -> Attribute msg
position =
    Attributes.string "position"


{-| TODO: Description of responsive-width attribute
-}
responsiveWidth : String -> Attribute msg
responsiveWidth =
    Attributes.string "responsive-width"


{-| TODO: Description of reveals attribute
-}
reveals : Bool -> Attribute msg
reveals =
    Attributes.bool "reveals"



-- TODO: Implement attribute scroll-target of type


{-| TODO: Description of shadow attribute
-}
shadow : Bool -> Attribute msg
shadow =
    Attributes.bool "shadow"


{-| TODO: Description of swipe-open attribute
-}
swipeOpen : Bool -> Attribute msg
swipeOpen =
    Attributes.bool "swipe-open"


{-| TODO: Description of threshold attribute
-}
threshold : Float -> Attribute msg
threshold =
    Attributes.number "threshold"


{-| TODO: Description of threshold-triggered attribute
-}
thresholdTriggered : Bool -> Attribute msg
thresholdTriggered =
    Attributes.bool "threshold-triggered"


{-| TODO: Description of transition-duration attribute
-}
transitionDuration : Float -> Attribute msg
transitionDuration =
    Attributes.number "transition-duration"
