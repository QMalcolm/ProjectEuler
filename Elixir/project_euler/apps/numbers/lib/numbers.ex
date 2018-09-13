defmodule Numbers do
  @moduledoc """
  Documentation for Numbers.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Numbers.hello
      :world

  """
  def hello do
    :world
  end

  def to_list(num) do
    num
    |> Integer.to_string
    |> String.graphemes
    |> Enum.reduce([], fn x, acc -> [String.to_integer(x) | acc] end)
    |> Enum.reverse
  end

  def factorial(num) when num <= 0, do: 1
  def factorial(num) do
    num * factorial(num-1)
  end
end
