library-template.lua
===
![Continuous Integration][ci]

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

Your library must be hosted on a public available git server like
[github][github], [gitlab][gitlab], [sourcehut][sourcehut], etc. You'll also
need an account in [LuaRocks][luarocks].

For the first release you just need to run the following commands:

```bash
$ git tag v0.1.0
$ git push --tags
$ luarocks upload
```

For the next releases remember that you'll need to modify and copy/rename the
`.rockspec` file to reflect the new version.

[lua]: https://www.lua.org/
[entr]: https://eradman.com/entrproject/
[github]: https://github.com/
[gitlab]: https://about.gitlab.com/
[luarocks]: https://luarocks.org/
[sourcehut]: https://sr.ht/
[busted]: https://olivinelabs.com/busted/
[luassert]: https://github.com/Olivine-Labs/luassert
[matcher_combinators]: https://github.com/m00qek/matcher_combinators.lua
[ci]: https://github.com/m00qek/library-template.lua/actions/workflows/ci.yaml/badge.svg
