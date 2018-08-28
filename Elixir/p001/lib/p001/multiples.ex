defmodule P001.Multiples do
  def get_multiples_of_3_or_5_below_number(num) do
    Enum.to_list(1..num-1)
    |> Enum.filter(fn x -> (rem(x, 3) == 0 or rem(x, 5) == 0) end)
  end

  def sum_list(list) do
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end
end
