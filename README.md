# Dlocal payouts

**an unofficial package Dlocal payouts API library for Elixir**

The Dlocal Elixir library provides convenient access to the [Dlocal payouts API](https://docs.dlocal.com/api-documentation/payout-api-reference) from applications written in the Elixir language.

## Installation

the package can be installed by adding `dlocal` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:dlocal, "~> 0.1.0"}
  ]
end
```

## Configuration


Dlocal requires certain properties to be configured.

In order to load ENV vars at runtime. Please note ENV vars have to be set prior app loading: export DLOCAL_LOGIN=123...

```elixir
config :dlocal,
  login: System.get_env("DLOCAL_LOGIN"),
  pass: System.get_env("DLOCAL_PASS"),
  secret_key: System.get_env("DLOCAL_API_KEY"),
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/dlocal](https://hexdocs.pm/dlocal).

