defmodule Numbers.PythagoreanTriple do

  def first_with_sum_a_b_c(val, min_a \\ 1) do
    max_a = a_max(val)
    iter_outer(Enum.to_list(min_a..max_a), val)
  end

  defp a_max(val) do
    val = if rem(val, 3) == 0 do
      val - rem(val, 3)
    else
      val
    end
    div(val, 3) - 1
  end

  defp b_max(a, val) do
    max_b = div((val-a), 2)
    if val - (a + max_b) == max_b do
      max_b - 1
    else
      max_b
    end
  end

  defp iter_outer([], _val), do: nil
  defp iter_outer([a | tail], val) do
    max_b = b_max(a, val)
    case iter_inner(Enum.to_list((a+1)..max_b), a, val) do
      nil ->
        iter_outer(tail, val)
      result ->
        result
    end
  end

  defp iter_inner([], _a, _val), do: nil
  defp iter_inner([b | tail], a, val) do
    c = val - (a + b)
    if (a * a) + (b * b) == (c * c) do
      %{a: a, b: b, c: c}
    else
      iter_inner(tail, a, val)
    end
  end
end
