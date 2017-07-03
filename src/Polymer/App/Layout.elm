module Polymer.App.Layout exposing (..)

{-| Elements from app-layout component. See <https://www.webcomponents.org/element/PolymerElements/app-layout>


# Elements

@docs drawer, drawerLayout, grid, header, headerLayout, toolbar, box

-}

import Html exposing (Html, Attribute, node)


{-| app-drawer is a navigation drawer that can slide in from the left or right.

Example:

Align the drawer at the start, which is left in LTR layouts (default):

```html
<app-drawer opened></app-drawer>
```

Align the drawer at the end:

```html
<app-drawer align="end" opened></app-drawer>
```

To make the contents of the drawer scrollable, create a wrapper for the scroll
content, and apply height and overflow styles to it.

```html
<app-drawer>
 <div style="height: 100%; overflow: auto;"></div>
</app-drawer>
```


### Styling

Custom property | Description | Default
---------------------------------|----------------------------------------|--------------------
`--app-drawer-width` | Width of the drawer | 256px
`--app-drawer-content-container` | Mixin for the drawer content container | {}
`--app-drawer-scrim-background` | Background for the scrim | rgba(0, 0, 0, 0.5)

*NOTE:** If you use <app-drawer> with <app-drawer-layout> and specify a value for
`--app-drawer-width`, that value must be accessible by both elements. This can be done by
defining the value on the `:host` that contains <app-drawer-layout> (or `html` if outside
a shadow root):

```css
:host {
 --app-drawer-width: 300px;
}
```

-}
drawer : List (Attribute msg) -> List (Html msg) -> Html msg
drawer =
    node "app-drawer"


{-| app-drawer-layout is a wrapper element that positions an app-drawer and other content. When
the viewport width is smaller than `responsiveWidth`, this element changes to narrow layout.
In narrow layout, the drawer will be stacked on top of the main content. The drawer will slide
in/out to hide/reveal the main content.

By default the drawer is aligned to the start, which is left in LTR layouts:

```html
<app-drawer-layout>
 <app-drawer slot="drawer">
 drawer content
 </app-drawer>
 <div>
 main content
 </div>
</app-drawer-layout>
```

Align the drawer at the end:

```html
<app-drawer-layout>
 <app-drawer slot="drawer" align="end">
 drawer content
 </app-drawer>
 <div>
 main content
 </div>
</app-drawer-layout>
```

With an app-header-layout:

```html
<app-drawer-layout>
 <app-drawer slot="drawer">
 drawer-content
 </app-drawer>
 <app-header-layout>
 <app-header slot="header">
 <app-toolbar>
 <div main-title>App name</div>
 </app-toolbar>
 </app-header>

 main content

 </app-header-layout>
</app-drawer-layout>
```

Add the `drawer-toggle` attribute to elements inside `app-drawer-layout` that toggle the drawer on click events:

```html
<app-drawer-layout>
 <app-drawer slot="drawer">
 drawer-content
 </app-drawer>
 <app-header-layout>
 <app-header slot="header">
 <app-toolbar>
 <paper-icon-button icon="menu" drawer-toggle></paper-icon-button>
 <div main-title>App name</div>
 </app-toolbar>
 </app-header>

 main content

 </app-header-layout>
</app-drawer-layout>
```

*NOTE:** With app-layout 2.0, the `drawer-toggle` element will not be automatically hidden
when app-drawer-layout is not in narrow layout. To add this, add the following CSS rule where
app-drawer-layout is used:

```css
app-drawer-layout:not([narrow]) [drawer-toggle] {
 display: none;
}
```

Add the `fullbleed` attribute to app-drawer-layout to make it fit the size of its container:

```html
<app-drawer-layout fullbleed>
 <app-drawer slot="drawer">
 drawer content
 </app-drawer>
 <div>
 main content
 </div>
</app-drawer-layout>
```


### Styling

Custom property | Description | Default
-----------------------------------------|--------------------------------------|---------
`--app-drawer-width` | Width of the drawer | 256px
`--app-drawer-layout-content-transition` | Transition for the content container | none

*NOTE:** If you use <app-drawer> with <app-drawer-layout> and specify a value for
`--app-drawer-width`, that value must be accessible by both elements. This can be done by
defining the value on the `:host` that contains <app-drawer-layout> (or `html` if outside
a shadow root):

```css
:host {
 --app-drawer-width: 300px;
}
```

-}
drawerLayout : List (Attribute msg) -> List (Html msg) -> Html msg
drawerLayout =
    node "app-drawer-layout"


{-| app-grid is a helper class useful for creating responsive, fluid grid layouts using custom properties.
Because custom properties can be defined inside a `@media` rule, you can customize the grid layout
for different responsive breakpoints.

Example:

Import `app-grid-style.html` and include `app-grid-style` in the style of an element's definition.
Then, add the class `app-grid` to a container such as `ul` or `div`:

```html
<template>
 <style include="app-grid-style">
 :host {
 --app-grid-columns: 3;
 --app-grid-item-height: 100px;
 }

 ul {
 padding: 0;
 list-style: none;
 }

 .item {
 background-color: white;
 }
 </style>
 <ul class="app-grid">
 <li class="item">1</li>
 <li class="item">2</li>
 <li class="item">3</li>
 </ul>
</template>
```

In the example above, the grid will take 3 columns per row.


### Expandible items

In many cases, it's useful to expand an item more than 1 column. To achieve this type of layout,
you can specify the number of columns the item should expand to by setting the custom property
`--app-grid-expandible-item-columns`. To indicate which item should expand, apply the mixin
`--app-grid-expandible-item` to a rule with a selector to the item. For example:

<pre><code>
&lt;template>
 &lt;style include="app-grid-style">
 :host {
 --app-grid-columns: 3;
 --app-grid-item-height: 100px;
 --app-grid-expandible-item-columns: 3;
 }

/Applications /Library /Network /System /Users /Volumes /bin /cores /dev /etc /home /installer.failurerequests /keybase /net /opt /private /sbin /tmp /usr /var Only the first item should expand */
.item:first-child {
&#64;apply --app-grid-expandible-item;
}
&lt;/style>
&lt;/template>
</code></pre>


### Preserving the aspect ratio

When the size of a grid item should preserve the aspect ratio, you can add the `has-aspect-ratio`
attribute to the element with the class `.app-grid`. Now, every item element becomes a wrapper around
the item content. For example:

```html
<template>
 <style include="app-grid-style">
 :host {
 --app-grid-columns: 3;
 /Applications /Library /Network /System /Users /Volumes /bin /cores /dev /etc /home /installer.failurerequests /keybase /net /opt /private /sbin /tmp /usr /var 50% the width of the item is equivalent to 2:1 aspect ratio*/
 --app-grid-item-height: 50%;
 }

 .item {
 background-color: white;
 }
 </style>
 <ul class="app-grid" has-aspect-ratio>
 <li class="item">
 <div>item 1</div>
 </li>
 <li class="item">
 <div>item 2</div>
 </li>
 <li class="item">
 <div>item 3</div>
 </li>
 </ul>
</template>
```


### Styling

Custom property | Description | Default
----------------------------------------------|------------------------------------------------------------|------------------
`--app-grid-columns` | The number of columns per row. | 1
`--app-grid-gutter` | The space between two items. | 0px
`--app-grid-item-height` | The height of the items. | auto
`--app-grid-expandible-item-columns` | The number of columns an expandible item should expand to. | 1

-}
grid : List (Attribute msg) -> List (Html msg) -> Html msg
grid =
    node "app-grid"


{-| app-header is container element for app-toolbars at the top of the screen that can have scroll
effects. By default, an app-header moves away from the viewport when scrolling down and
if using `reveals`, the header slides back when scrolling back up. For example:

```html
<app-header reveals>
 <app-toolbar>
 <div main-title>App name</div>
 </app-toolbar>
</app-header>
```

app-header can also condense when scrolling down. To achieve this behavior, the header
must have a larger height than the `sticky` element in the light DOM. For example:

```html
<app-header style="height: 96px;" condenses fixed>
 <app-toolbar style="height: 64px;">
 <div main-title>App name</div>
 </app-toolbar>
</app-header>
```

In this case the header is initially `96px` tall, and it shrinks to `64px` when scrolling down.
That is what is meant by "condensing".


### Sticky element

The element that is positioned fixed to top of the header's `scrollTarget` when a threshold
is reached, similar to `position: sticky` in CSS. This element **must** be an immediate
child of app-header. By default, the `sticky` element is the first `app-toolbar that
is an immediate child of app-header.

```html
<app-header condenses>
 <app-toolbar> Sticky element </app-toolbar>
</app-header>
```


#### Customizing the sticky element

```html
<app-header condenses>
 <app-toolbar></app-toolbar>
 <app-toolbar sticky> Sticky element </app-toolbar>
</app-header>
```


### Scroll target

The app-header's `scrollTarget` property allows to customize the scrollable element to which
the header responds when the user scrolls. By default, app-header uses the document as
the scroll target, but you can customize this property by setting the id of the element, e.g.

```html
<div id="scrollingRegion" style="overflow-y: auto;">
 <app-header scroll-target="scrollingRegion">
 </app-header>
</div>
```

In this case, the `scrollTarget` property points to the outer div element. Alternatively,
you can set this property programmatically:

```js
appHeader.scrollTarget = document.querySelector("#scrollingRegion");
```


## Backgrounds

app-header has two background layers that can be used for styling when the header is condensed
or when the scrollable element is scrolled to the top.


## Scroll effects

Scroll effects are *optional* visual effects applied in app-header based on scroll position. For example,
The [Material Design scrolling techniques](https://www.google.com/design/spec/patterns/scrolling-techniques.html)
recommends effects that can be installed via the `effects` property. e.g.

```html
<app-header effects="waterfall">
 <app-toolbar>App name</app-toolbar>
</app-header>
```


#### Importing the effects

To use the scroll effects, you must explicitly import them in addition to `app-header`:

```html
<link rel="import" href="/bower_components/app-layout/app-scroll-effects/app-scroll-effects.html">
```


#### List of effects

**blend-background**
Fades in/out two background elements by applying CSS opacity based on scroll position.
You can use this effect to smoothly change the background color or image of the header.
For example, using the mixin `--app-header-background-rear-layer` lets you assign a different
background when the header is condensed:

```css
app-header {
 background-color: red;
 --app-header-background-rear-layer: {
 /Applications /Library /Network /System /Users /Volumes /bin /cores /dev /etc /home /installer.failurerequests /keybase /net /opt /private /sbin /tmp /usr /var The header is blue when condensed */
 background-color: blue;
 };
}
```

**fade-background**
Upon scrolling past a threshold, this effect will trigger an opacity transition to
fade in/out the backgrounds. Compared to the `blend-background` effect,
this effect doesn't interpolate the opacity based on scroll position.

**parallax-background**
A simple parallax effect that vertically translates the backgrounds based on a fraction
of the scroll position. For example:

```css
app-header {
 --app-header-background-front-layer: {
 background-image: url(...);
 };
}
```

```html
<app-header style="height: 300px;" effects="parallax-background">
 <app-toolbar>App name</app-toolbar>
</app-header>
```

The fraction determines how far the background moves relative to the scroll position.
This value can be assigned via the `scalar` config value and it is typically a value
between 0 and 1 inclusive. If `scalar=0`, the background doesn't move away from the header.

**resize-title**
Progressively interpolates the size of the title from the element with the `main-title` attribute
to the element with the `condensed-title` attribute as the header condenses. For example:

```html
<app-header condenses reveals effects="resize-title">
 <app-toolbar>
 <h4 condensed-title>App name</h4>
 </app-toolbar>
 <app-toolbar>
 <h1 main-title>App name</h1>
 </app-toolbar>
</app-header>
```

**resize-snapped-title**
Upon scrolling past a threshold, this effect fades in/out the titles using opacity transitions.
Similarly to `resize-title`, the `main-title` and `condensed-title` elements must be placed in the
light DOM.

**waterfall**
Toggles the shadow property in app-header to create a sense of depth (as recommended in the
MD spec) between the header and the underneath content. You can change the shadow by
customizing the `--app-header-shadow` mixin. For example:

```css
app-header {
 --app-header-shadow: {
 box-shadow: inset 0px 5px 2px -3px rgba(0, 0, 0, 0.2);
 };
}
```

```html
<app-header condenses reveals effects="waterfall">
 <app-toolbar>
 <h1 main-title>App name</h1>
 </app-toolbar>
</app-header>
```

**material**
Installs the waterfall, resize-title, blend-background and parallax-background effects.


### Content attributes

Attribute | Description | Default
----------|---------------------|----------------------------------------
`sticky` | Element that remains at the top when the header condenses. | The first app-toolbar in the light DOM.


## Styling

Mixin | Description | Default
------|-------------|----------
`--app-header-background-front-layer` | Applies to the front layer of the background. | {}
`--app-header-background-rear-layer` | Applies to the rear layer of the background. | {}
`--app-header-shadow` | Applies to the shadow. | {}

-}
header : List (Attribute msg) -> List (Html msg) -> Html msg
header =
    node "app-header"


{-| app-header-layout is a wrapper element that positions an app-header and other content. This
element uses the document scroll by default, but it can also define its own scrolling region.

Using the document scroll:

```html
<app-header-layout>
 <app-header slot="header" fixed condenses effects="waterfall">
 <app-toolbar>
 <div main-title>App name</div>
 </app-toolbar>
 </app-header>
 <div>
 main content
 </div>
</app-header-layout>
```

Using an own scrolling region:

```html
<app-header-layout has-scrolling-region style="width: 300px; height: 400px;">
 <app-header slot="header" fixed condenses effects="waterfall">
 <app-toolbar>
 <div main-title>App name</div>
 </app-toolbar>
 </app-header>
 <div>
 main content
 </div>
</app-header-layout>
```

Add the `fullbleed` attribute to app-header-layout to make it fit the size of its container:

```html
<app-header-layout fullbleed>
 ...
</app-header-layout>
```

-}
headerLayout : List (Attribute msg) -> List (Html msg) -> Html msg
headerLayout =
    node "app-header-layout"


{-| app-toolbar is a horizontal toolbar containing items that can be used for
label, navigation, search and actions.


### Example

Add a title to the toolbar.

```html
<app-toolbar>
 <div main-title>App name</div>
</app-toolbar>
```

Add a button to the left and right side of the toolbar.

```html
<app-toolbar>
 <paper-icon-button icon="menu"></paper-icon-button>
 <div main-title>App name</div>
 <paper-icon-button icon="search"></paper-icon-button>
</app-toolbar>
```

You can use the attributes `top-item` or `bottom-item` to completely fit an element
to the top or bottom of the toolbar respectively.


### Content attributes

Attribute | Description
---------------------|---------------------------------------------------------
`main-title` | The main title element.
`condensed-title` | The title element if used inside a condensed app-header.
`spacer` | Adds a left margin of `64px`.
`bottom-item` | Sticks the element to the bottom of the toolbar.
`top-item` | Sticks the element to the top of the toolbar.


### Styling

Custom property | Description | Default
-----------------------------|------------------------------|-----------------------
`--app-toolbar-font-size` | Toolbar font size | 20px

-}
toolbar : List (Attribute msg) -> List (Html msg) -> Html msg
toolbar =
    node "app-toolbar"


{-| app-box is a container element that can have scroll effects - visual effects based on
scroll position. For example, the parallax effect can be used to move an image at a slower
rate than the foreground.

```html
<app-box style="height: 100px;" effects="parallax-background">
 <img slot="background" src="picture.png" style="width: 100%; height: 600px;">
</app-box>
```

Notice the `background` attribute in the `img` element; this attribute specifies that that
image is used as the background. By adding the background to the light dom, you can compose
backgrounds that can change dynamically. Alternatively, the mixin `--app-box-background-front-layer`
allows to style the background. For example:

```css
 .parallaxAppBox {
 --app-box-background-front-layer: {
 background-image: url(picture.png);
 };
 }
```

Finally, app-box can have content inside. For example:

```html
<app-box effects="parallax-background">
 <h2>Sub title</h2>
</app-box>
```


#### Importing the effects

To use the scroll effects, you must explicitly import them in addition to `app-box`:

```html
<link rel="import" href="/bower_components/app-layout/app-scroll-effects/app-scroll-effects.html">
```


#### List of effects

**parallax-background**
A simple parallax effect that vertically translates the backgrounds based on a fraction
of the scroll position. For example:

```css
app-header {
 --app-header-background-front-layer: {
 background-image: url(...);
 };
}
```

```html
<app-header style="height: 300px;" effects="parallax-background">
 <app-toolbar>App name</app-toolbar>
</app-header>
```

The fraction determines how far the background moves relative to the scroll position.
This value can be assigned via the `scalar` config value and it is typically a value
between 0 and 1 inclusive. If `scalar=0`, the background doesn't move away from the header.


## Styling

Mixin | Description | Default
----------------|-------------|----------
`--app-box-background-front-layer` | Applies to the front layer of the background | {}

-}
box : List (Attribute msg) -> List (Html msg) -> Html msg
box =
    node "app-box"
