use Mix.Config

config :dlocal,
  url: "https://sandbox.dlocal.com/api_curl/cashout_api"

config :exvcr,
  vcr_cassette_library_dir: "test/fixtures/vcr_cassettes",
  custom_cassette_library_dir: "test/fixtures/custom_cassettes"
