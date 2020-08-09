# Nonbili package-sets

A collection of Nonbili PureScript packages.

## Included packages

| Name | Latest release |
| --- | --- |
| css-properties | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-css-properties)](https://github.com/nonbili/purescript-css-properties/releases) |
| css-validate | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-css-validate)](https://github.com/nonbili/purescript-css-validate/releases) |
| halogen-color-picker | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-halogen-color-picker)](https://github.com/nonbili/purescript-halogen-color-picker/releases) |
| halogen-nselect | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-halogen-nselect)](https://github.com/nonbili/purescript-halogen-nselect/releases) |
| jest | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-jest)](https://github.com/nonbili/purescript-jest/releases) |
| markdown-it | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-markdown-it)](https://github.com/nonbili/purescript-markdown-it/releases) |
| markdown-it-halogen | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-markdown-it-halogen)](https://github.com/nonbili/purescript-markdown-it-halogen/releases) |
| msgpack-msgpack | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-msgpack-msgpack)](https://github.com/nonbili/purescript-msgpack-msgpack/releases) |
| node-fs-extra | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-node-fs-extra)](https://github.com/nonbili/purescript-node-fs-extra/releases) |
| nonbili | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-nonbili)](https://github.com/nonbili/purescript-nonbili/releases) |
| nonbili-dom | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-nonbili-dom)](https://github.com/nonbili/purescript-nonbili-dom/releases) |
| nonbili-halogen | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-nonbili-halogen)](https://github.com/nonbili/purescript-nonbili-halogen/releases) |
| nonbili-nodejs | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-nonbili-nodejs)](https://github.com/nonbili/purescript-nonbili-nodejs/releases) |
| nonbili-postgres | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-nonbili-postgres)](https://github.com/nonbili/purescript-nonbili-postgres/releases) |
| template-literals | [![GitHub release](https://badgen.net/github/tag/nonbili/purescript-template-literals)](https://github.com/nonbili/purescript-template-literals/releases) |

## Usage

Include Nonbili package-sets in your local `packages.dhall`, `let nonbili = https://github.com/nonbili/package-sets/releases/download/<release-version>/packages.dhall`, remember to use the latest release version.

## Example

Example `package.dhall`

```dhall
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.6-20200127/packages.dhall sha256:06a623f48c49ea1c7675fdf47f81ddb02ae274558e29f511efae1df99ea92fb8

let nonbili =
      https://github.com/nonbili/package-sets/releases/download/v0.5/packages.dhall sha256:b6e243c12beb4c2b122f9ec23a5a1bd6910d92e382e0ff9ccea2af99560ce499

let overrides = {=}

let additions = {=}

in  upstream // nonbili // overrides // additions
```

Then include Nonbili packages in your local `spago.dhall`

```dhall
{ name = "package-name"
, dependencies =
  [ "css-properties"
  , "css-validate"
  , "halogen-color-picker"
  , "halogen-nselect"
  , "jest"
  , "markdown-it"
  , "msgpack-msgpack"
  , "node-fs-extra"
  , "nonbili-dom"
  , "nonbili-halogen"
  , "nonbili-nodejs"
  , "nonbili-postgres"
  , "template-literals"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
```
