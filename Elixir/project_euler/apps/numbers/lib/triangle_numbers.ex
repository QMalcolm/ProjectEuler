defmodule Numbers.TriangleNumbers do
  def nth(n) do
    Kernel.trunc((n*(n+1))/2)
  end

  def first_with_x_divisors(x, n \\ 1) when is_integer(x) and is_integer(n) do
    triangle_num = nth(n)
    if Numbers.Factors.count_factors(triangle_num) > x do
      triangle_num
    else
      first_with_x_divisors(x, n + 1)
    end
  end
end
