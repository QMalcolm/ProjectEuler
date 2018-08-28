defmodule P001 do
  @moduledoc """
  Documentation for P001.
  """

  @doc """
  Hello world.

  ## Examples

      iex> P001.hello
      :world

  """
  def hello do
    :world
  end

  def run(num \\ 1000) do
    P001.Multiples.get_multiples_of_3_or_5_below_number(num)
    |> P001.Multiples.sum_list()
    |> IO.puts
  end
end
