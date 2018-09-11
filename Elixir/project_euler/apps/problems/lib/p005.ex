defmodule Problems.P005 do
  def run do
    1..20
    |> Enum.to_list
    |> Numbers.Multiples.lcm_list
    |> IO.puts
  end
end
