defmodule Lists do
  @moduledoc """
  Documentation for Lists.
  """

  @doc """
  Sum Integer List - Sums a list of integers

  ## Examples

      iex> Lists.sum_int_list([1,2,3,4,5])
      15

  """
  def sum_int_list(list) when is_list(list) do
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end
end
