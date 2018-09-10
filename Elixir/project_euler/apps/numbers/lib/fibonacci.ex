defmodule Numbers.Fibonacci do
  def generate_below(max_exclusive) when max_exclusive >= 1 do
    Enum.reverse(generate_below(max_exclusive, [1, 1]))
  end

  defp generate_below(max_exclusive, [p1 | [p2 | _tail]] = fib) do
    if p1 + p2 < max_exclusive do
      generate_below(max_exclusive, [ (p1 + p2) | fib])
    else
      fib
    end
  end
end
