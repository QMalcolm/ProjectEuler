defmodule Problems.P004 do
  def run do
    x = 1..999 |> Enum.to_list() |> Enum.reverse()
    y = x
    IO.puts iterate_outer(x, y)
  end

  def iterate_outer(x, y, largest \\ 0)
  def iterate_outer([], _y, largest), do: largest
  def iterate_outer([head | tail], y, largest) do
    iter_largest = iterate_inner(head, y)
    if iter_largest > largest do
      iterate_outer(tail, y, iter_largest)
    else
      iterate_outer(tail, y, largest)
    end
  end

  def iterate_inner(x, y, largest \\ 0)
  def iterate_inner(_x, [], largest), do: largest
  def iterate_inner(x, [head | tail], largest) do
    product = x * head
    if product > largest and Strings.is_palindrome?(product) do
      iterate_inner(x, tail, product)
    else
      iterate_inner(x, tail, largest)
    end
  end
end
