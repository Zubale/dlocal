use Mix.Config

config :dlocal,
  sandbox: true,
  secret_key: "14176ba6c5aded5c334a31e1ed66ca421",
  login: "example",
  pass: "examplepass"

config :exvcr,
  vcr_cassette_library_dir: "test/fixtures/vcr_cassettes",
  custom_cassette_library_dir: "test/fixtures/custom_cassettes"
