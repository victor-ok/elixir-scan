defmodule RealWorld.Mixfile do
  use Mix.Project

  def project do
    [

      app: :my_project,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end



  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support", "test/factories"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:mongodb_driver, git: "https://github.com/zookzook/elixir-mongodb-driver.git", ref: "d8c8652b4e66a0031e1a7fe36bc2af5c85cef408"}
    ]
  end
end
