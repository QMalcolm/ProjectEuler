defmodule Problems.P021 do
  def run do
    total = Enum.reduce(1..9999, 0, fn num, acc ->
        cond do
          has_amicable(num) -> acc + num
          true -> acc
        end
      end)
    IO.puts total
  end

  def has_amicable(1), do: false
  def has_amicable(num) do
    sum_of_x = sum_of_factors(num)
    sum_of_y = sum_of_factors(sum_of_x)
    num == sum_of_y
  end

  def sum_of_factors(num) do
    Numbers.Factors.all_factors_of(num)
    |> Enum.reverse()
    |> tl()
    |> Enum.sum
  end
end
