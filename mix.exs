defmodule Email.Mixfile do
  use Mix.Project

  def project do
    [app: :email,
     version: "0.0.1",
     elixir: "~> 1.0.2",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Email, []},
     applications: [:phoenix, :cowboy, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "0.5.0"},
     {:cowboy, "~> 1.0"},
     { :postgrex, "~> 0.5" }]
  end
end
