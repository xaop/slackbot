defmodule OhaiIrc.Mixfile do
  use Mix.Project

  def project do
    [app: :ohai_irc,
     version: "0.0.1",
     elixir: "~> 1.4",
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison, :slack, :timex],
     mod: {OhaiIrc, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:exgenius,      "~> 0.0.2"},
     {:slack,         "~> 0.9.2"},
     {:poison,        "~> 3.0"},
     {:timex,         "~> 3.1.7"},
     {:feeder_ex,     "~> 1.0"}
   ]
  end
end
