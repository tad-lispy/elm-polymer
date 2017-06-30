module Polymer.Paper.Card.Attributes exposing (..)

import Html exposing (Attribute)
import Polymer.Attributes as Attributes


{-| TODO: Description of alt attribute
-}
alt : String -> Attribute msg
alt =
    Attributes.string "alt"


{-| TODO: Description of animated attribute
-}
animated : Bool -> Attribute msg
animated =
    Attributes.bool "animated"


{-| TODO: Description of animated-shadow attribute
-}
animatedShadow : Bool -> Attribute msg
animatedShadow =
    Attributes.bool "animated-shadow"


{-| TODO: Description of elevation attribute
-}
elevation : Float -> Attribute msg
elevation =
    Attributes.number "elevation"


{-| TODO: Description of fade-image attribute
-}
fadeImage : Bool -> Attribute msg
fadeImage =
    Attributes.bool "fade-image"


{-| TODO: Description of heading attribute
-}
heading : String -> Attribute msg
heading =
    Attributes.string "heading"


{-| TODO: Description of image attribute
-}
image : String -> Attribute msg
image =
    Attributes.string "image"


{-| TODO: Description of placeholder-image attribute
-}
placeholderImage : String -> Attribute msg
placeholderImage =
    Attributes.string "placeholder-image"


{-| TODO: Description of preload-image attribute
-}
preloadImage : Bool -> Attribute msg
preloadImage =
    Attributes.bool "preload-image"
