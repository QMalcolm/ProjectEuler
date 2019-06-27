defmodule Problems.P017 do
  def run do
    Enum.reduce(1..1000, 0, fn num, acc ->
      Numbers.NumbersToWords.say(num)
      |> String.replace(" ", "")
      |> String.length
      |> Kernel.+(acc)
    end)
  end
end
