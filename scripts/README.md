# Development Scripts

Various development / deployment scripts. Mostly called via `npm run`.

## Implicit requirements

The scripts are meant to be run on POSIX platform. Additionally they require following software packages that are not distributed with this project:

  - [jq][]

  - [HTTPie][]

  - [GNU gettext][]

    Should be pre-installed on most Linux distributions. On OS X you can install it with Brew:

    ```sh
    brew install gettext
    ```

    Note that if installing on OS X via Brew you need to take extra steps to make it available in your path - see the instructions printed by Brew.

  - [GNU sed][]

    Should be pre-installed on most Linux distributions. On OS X you can install it with Brew:

    ```sh
    brew install gnu-sed --with-default-names
    ```

    The `--with-default-names` option makes it take precedence over BSD version of `sed` which is pre-installed on OS X, but is incompatible with these scripts.

[jq]: https://stedolan.github.io/jq/
[HTTPie]: https://httpie.org/
[GNU gettext]: https://www.gnu.org/software/gettext/gettext.html
[GNU sed]: https://www.gnu.org/software/sed/
