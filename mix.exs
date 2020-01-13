defmodule MarsRovers.MixProject do
  use Mix.Project

  def project do
    [
      app: :mars_rovers,
      version: "0.1.0",
      elixir: "~> 1.9",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      escript: escript,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp escript do
    [main_module: MarsRovers.CLI]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:excoveralls, "~> 0.5", only: :test}]
  end
end
