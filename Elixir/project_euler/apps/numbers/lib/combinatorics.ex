defmodule Numbers.Combinatorics do
  def combination(n, k) do
    numerator = Numbers.factorial(n)
    denominator = Numbers.factorial(k) * Numbers.factorial(n-k)
    div(numerator, denominator)
  end
end
