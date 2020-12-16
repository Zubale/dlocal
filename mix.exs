defmodule Dlocal.MixProject do
  use Mix.Project

  def project do
    [
      app: :dlocal,
      version: "0.1.0",
      elixir: "~> 1.11-rc",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
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
      {:ex_doc, "~> 0.23.0"}
    ]
  end

  defp description do
    """
    Dlocal API library for Elixir
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
