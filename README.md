# Nonbili package-sets

A collection of Nonbili PureScript packages.

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
