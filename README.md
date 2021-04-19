library-template.lua
===
[![Integration][integration-badge]][integration-runs]
[![LuaRocks][luarocks-badge]][luarocks-packages]

A template to create pure [Lua][lua] libraries

## Using

Clone/download it locally and change the references to `my_user`, `my_library`
accordingly to your new library name.

You'll need to install [Lua][lua] and [LuaRocks][luarocks].

## Testing

This uses [busted][busted], [luassert][luassert] and
[matcher_combinators][matcher_combinators] to define tests in `spec/` directory.
To run them just execute

```bash
$ luarocks test --local
```

If you have [entr(1)][entr] installed you may use it to run all tests whenever a
file is changed using:

```bash
$ find spec/ src/ -name '*.lua' | entr luarocks test --local
```

## Publishing

Your library must be hosted on [github][github] before making the first release.
First, create a LuaRocks account and generate [a new API key][luarocks-key].
This key must be used *exclusively* by the `release` [Github Action][release],
so copy and add it to the Secrets of your repo under the name `LUAROCKS_KEY`.

For the first release you just need to run the following commands:

```bash
$ git tag v0.1.0
$ git push --tags
```

For the next releases remember that you'll need to modify and copy/rename the
`.rockspec` file to reflect the new version.

[lua]: https://www.lua.org/
[entr]: https://eradman.com/entrproject/
[github]: https://github.com/
[luarocks]: https://luarocks.org/
[luarocks-key]: https://luarocks.org/settings/api-keys
[busted]: https://olivinelabs.com/busted/
[luassert]: https://github.com/Olivine-Labs/luassert
[matcher_combinators]: https://github.com/m00qek/matcher_combinators.lua
[release]: .github/workflows/release.yaml

[integration-badge]: https://github.com/m00qek/library-template.lua/actions/workflows/integration.yml/badge.svg
[integration-runs]: https://github.com/m00qek/library-template.lua/actions/workflows/integration.yml
[luarocks-badge]: https://img.shields.io/luarocks/v/m00qek/my_library?style=plastic
[luarocks-packages]: https://luarocks.org/modules/m00qek/my_library
