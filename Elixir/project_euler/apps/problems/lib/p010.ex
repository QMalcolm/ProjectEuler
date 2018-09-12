defmodule Problems.P010 do
  def run do
    Numbers.ErathosthenesSieve.generate_to(1_999_999)
    |> Lists.sum_int_list
    |> IO.puts
  end
end
