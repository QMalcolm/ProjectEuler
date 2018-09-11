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

  def prod_int_list(list) when is_list(list) do
    Enum.reduce(list, 1, fn x, acc -> x * acc end)
  end

  def square_each(list) when is_list(list) do
    list
    |> Flow.from_enumerable
    |> Flow.reduce(fn -> [] end, fn val, acc -> [:math.pow(val, 2) | acc] end)
    |> Enum.to_list
    |> Enum.reverse
  end

  def remove_factors(divisor, candidates) when is_integer(divisor) and is_list(candidates) do
    candidates
    |> Flow.from_enumerable
    |> Flow.reject(fn x -> rem(x, divisor) == 0 end)
    |> Enum.to_list
    |> Enum.sort
  end
end
