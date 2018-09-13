defmodule Problems.P016 do
  def run do
    :math.pow(2, 1000)
    |> Kernel.trunc()
    |> Numbers.to_list()
    |> Lists.sum_int_list()
    |> IO.puts
  end
end
