defmodule Problems.P014 do
  def run do
    1..999_999
    |> Enum.reduce([], fn val, acc ->
      sequence = Numbers.Collatz.gen_sequence(val)
      if length(sequence) >= length(acc) do
        sequence
      else
        acc
      end
    end)
    |> hd()
    |> IO.puts
  end
end
