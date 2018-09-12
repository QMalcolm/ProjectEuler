defmodule Problems.P009 do
  def run do
    case Numbers.PythagoreanTriple.first_with_sum_a_b_c(1000) do
      nil ->
        IO.puts ":("
      map ->
        prod = map[:a] * map[:b] * map[:c]
        IO.puts prod
    end
  end
end
