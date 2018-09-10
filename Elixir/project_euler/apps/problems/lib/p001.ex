defmodule Problems.P001 do
  def run do
    Numbers.Multiples.gen_multiples_of_or_between(0..999, [3,5])
    |> Lists.sum_int_list()
    |> IO.puts
  end
end
