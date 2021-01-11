defmodule Dlocal.MixProject do
  use Mix.Project

  def project do
    [
      app: :dlocal,
      version: "0.2.1",
      elixir: "~> 1.11-rc",
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.23.0"},
      {:jason, "~> 1.2"},
      {:httpoison, "~> 1.7"},

      # various analyses tools
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:exvcr, "~> 0.12.2", only: :test},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end

  defp description do
    """
    an unofficial package Dlocal payouts API library for Elixir
    """
  end

  defp package do
    [
      maintainers: ["Nicolas Mena"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/nmenag/dlocal"
      }
    ]
  end
end
