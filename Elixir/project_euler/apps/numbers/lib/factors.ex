defmodule Numbers.Factors do

  def gcd(0, b), do: b
  def gcd(a, b) do
    b
    |> :math.fmod(a)
    |> Kernel.trunc()
    |> gcd(a)
  end

  def gcd_list(list) when is_list(list) do
    [head | tail] = gcd_list_prods(list)
    gcd_list(tail, head)
  end

  defp gcd_list([], denominator), do: denominator
  defp gcd_list([head | tail], prev_denominator) do
    gcd_list(tail, gcd(head, prev_denominator))
  end

  defp gcd_list_prods(list) do
    indexes = Enum.to_list(0..(length(list) - 1))
    gcd_list_prods(indexes, list)
  end

  defp gcd_list_prods(indexes, vals, results \\ [])
  defp gcd_list_prods([], _list_vals, results), do: results
  defp gcd_list_prods([head | tail], vals, results) do
    temp_list = List.delete_at(vals, head)
    prod = Lists.prod_int_list(temp_list)
    gcd_list_prods(tail, vals, [prod | results])
  end

  def all_factors_of(num) do
    1..num
    |> Flow.from_enumerable
    |> Flow.reject(fn x -> rem(num, x) != 0 end)
    |> Enum.to_list
    |> Enum.sort
  end

  def count_factors(num) do
    divisors = 1
    {num, count} = factor_out_xs(num, 2)
    divisors = divisors * (count + 1)
    {_num, divisors} = factor_out_loop(num, 3, divisors)
    divisors
  end

  def factor_out_loop(num, x, divisors) do
    {num, count} = factor_out_xs(num, x)
    divisors = divisors * (count + 1)
    if num != 1 do
      factor_out_loop(num, x + 2, divisors)
    else
      {num, divisors}
    end
  end

  defp factor_out_xs(num, x, count \\ 0) do
    if rem(num, x) == 0 do
      factor_out_xs(div(num, x), x, count + 1)
    else
      {num, count}
    end
  end
end
