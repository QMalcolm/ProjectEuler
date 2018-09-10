defmodule Problems.P002 do
  def run do
    Numbers.Fibonacci.generate_below(4_000_000)
    |> Enum.reject(fn x -> rem(x, 2) == 0 end)
    |> Lists.sum_int_list()
    |> IO.puts
  end
end
