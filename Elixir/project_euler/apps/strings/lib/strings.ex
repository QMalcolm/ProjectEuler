defmodule Strings do
  @moduledoc """
  Documentation for Strings.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Strings.hello
      :world

  """
  def hello do
    :world
  end

  def is_palindrome?(word) when is_integer(word) do
    is_palindrome?(Integer.to_string(word))
  end

  def is_palindrome?(word) when is_bitstring(word) do
    word
    |> String.reverse()
    |> String.equivalent?(word)
  end
end
