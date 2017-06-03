defmodule Horcrux do
  def read do
    IO.gets("user> ")
  end

  def eval(args) do
    args
  end

  def print(string) do
    IO.write(string)
  end

  def repl! do
    case read() do
      {:error, :terminated} -> exit(:normal)
      input -> input |> eval |> print
    end

    repl!()
  end
end

Horcrux.repl!
