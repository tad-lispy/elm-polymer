# Elm Polymer

Elm bindings to some of the [PolymerElements Web Components][PolymerElements].

> Warning: This is an experiment on a rather early stage.

## Install

Please don't. It is not published to Elm packages repository yet. You can hack on it though.

## Hack

Provided that you have an Elm app you would like to try this package in:

1.  Clone this repository.

2.  Soft-link `src/Polymer` to your app's `src/`, e.g.:

    ```sh
    ln -s ../../elm-polymer/src/Polymer src/
    ```

## Use

Import some modules and start playing with it:


```elm
import Polymer.Paper.IconButton exposing (iconButton)
import Polymer.Paper.IconButton.Attributes exposing (icon)

view model =
  iconButton [ icon "menu" ] [ ]
```

Here! You have a one-button app :P

## Idea

Generate a lot of Elm code by processing data exposed at https://www.webcomponents.org/api

See [scripts/scaffold](./scripts/scaffold) for some hairy shell scripting that seems to actually work 👹

Once scaffolded the code can be manually edited. It isn't my intention to use this generation forever. Just to get it going.

Big thanks to @edvail for his prior implementation of [elm-polymer](/edvail/elm-polymer/) and @rtfeldman's [Elm Google Map example](rtfeldman/elm-google-maps) for inspiration.

## Contributing

Yes, please :)

[PolymerElements]: https://www.webcomponents.org/author/PolymerElements
