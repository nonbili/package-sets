{ name = "nonbili-package-sets"
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
, packages = ./example.dhall
, sources = [ "test/**/*.purs" ]
}
