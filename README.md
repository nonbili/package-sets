# Nonbili package-sets

A collection of Nonbili PureScript packages.

## Included packages

- css-properties [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-css-properties)](https://github.com/nonbili/purescript-css-properties/releases)
- css-validate [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-css-validate)](https://github.com/nonbili/purescript-css-validate/releases)
- halogen-color-picker [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-halogen-color-picker?include_prereleases)](https://github.com/nonbili/purescript-halogen-color-picker/releases)
- halogen-nselect [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-halogen-nselect)](https://github.com/nonbili/purescript-nselect/releases?include_prereleases)
- jest [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-jest)](https://github.com/nonbili/purescript-jest/releases)
- markdown-it [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-markdown-it)](https://github.com/nonbili/purescript-markdown-it/releases)
- markdown-it-halogen [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-markdown-it-halogen)](https://github.com/nonbili/purescript-markdown-it-halogen/releases?include_prereleases)
- msgpack-msgpack [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-msgpack-msgpack)](https://github.com/nonbili/purescript-msgpack-msgpack/releases)
- node-fs-extra [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-node-fs-extra)](https://github.com/nonbili/purescript-node-fs-extra/releases)
- nonbili [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-nonbili)](https://github.com/nonbili/purescript-nonbili/releases)
- nonbili-dom [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-nonbili-dom)](https://github.com/nonbili/purescript-nonbili-dom/releases)
- nonbili-halogen [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-nonbili-halogen)](https://github.com/nonbili/purescript-nonbili-halogen/releases)
- nonbili-nodejs [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-nonbili-nodejs)](https://github.com/nonbili/purescript-nonbili-nodejs/releases)
- nonbili-postgres [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-nonbili-postgres)](https://github.com/nonbili/purescript-nonbili-postgres/releases)
- template-literals [![GitHub release](https://img.shields.io/github/v/release/nonbili/purescript-template-literals)](https://github.com/nonbili/purescript-template-literals/releases)

## Usage

Include Nonbili package-sets in your local `packages.dhall`, `let nonbili = https://raw.githubusercontent.com/nonbili/package-sets/<commit-hash>/packages.dhall`, remember to use the latest commit hash.

## Example

Example `package.dhall`

```dhall
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.6-20200127/packages.dhall sha256:06a623f48c49ea1c7675fdf47f81ddb02ae274558e29f511efae1df99ea92fb8

let nonbili =
      https://raw.githubusercontent.com/nonbili/package-sets/32e51ffcd422d47215a4f45daf81e00ecb88f6c7/packages.dhall sha256:6173950140ae242553491216661e138272d392b7ccd623c91a58b8cc9a825435

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
