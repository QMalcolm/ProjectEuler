defmodule Problems.P006 do
  def run do
    first100nat = 1..100 |> Enum.to_list
    sum_of_squares = first100nat |> Lists.square_each() |> Lists.sum_int_list()
    square_of_sum = first100nat |> Lists.sum_int_list |> :math.pow(2)
    IO.puts Kernel.trunc((square_of_sum - sum_of_squares))
  end
end
