{ name = "nonbili-package-sets"
, dependencies =
  [ "css-properties"
  , "css-validate"
  , "halogen-color-picker"
  , "halogen-nselect"
  , "jest"
  , "lit-html"
  , "markdown-it"
  , "msgpack-msgpack"
  , "node-fs-extra"
  , "nonbili-dom"
  , "nonbili-halogen"
  , "nonbili-nodejs"
  , "nonbili-postgres"
  , "tauri"
  , "template-literals"
  ]
, packages = ./example.dhall
, sources = [ "test/**/*.purs" ]
}
