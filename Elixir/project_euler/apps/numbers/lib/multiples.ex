defmodule Numbers.Multiples do
  def is_multiple_of?(num, mod) do
    rem(num, mod) == 0
  end

  def is_multiple_of_or?(_num, []), do: false
  def is_multiple_of_or?(num, [head | mods]) do
    if num >= head and is_multiple_of?(num, head) do
      true
    else
      is_multiple_of_or?(num, mods)
    end
  end

  def is_multiple_of_and?(_num, []), do: true
  def is_multiple_of_and?(num, [head | mods]) do
    if num >= head and is_multiple_of?(num, head) do
      is_multiple_of_and?(num, mods)
    else
      false
    end
  end

  def gen_multiples_of_or_between(range, mods) when is_map(range) do
    range
    |> Flow.from_enumerable
    |> Flow.reject(fn x -> not is_multiple_of_or?(x, mods) end)
    |> Enum.to_list
  end

  def gen_multiples_of_and_between(range, mods) when is_map(range) do
    range
    |> Flow.from_enumerable
    |> Flow.reject(fn x -> not is_multiple_of_and?(x, mods) end)
    |> Enum.to_list
  end
end
