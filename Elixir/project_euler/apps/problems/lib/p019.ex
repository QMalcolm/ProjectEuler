defmodule Problems.P019 do
  def run do
    start = Date.from_erl!({1899, 12, 31})
    min = Date.from_erl!({1901, 1, 1})
    max = Date.from_erl!({2000, 12, 31})
    IO.inspect(cwfim(max, min, start, 0))
  end

  def cwfim(max, min, start, count) do
   cond do
     start < min -> cwfim(max, min, Date.add(start, 7), count)
     start > max -> count
     true ->
       {_, _, day} = Date.to_erl(start)
       count = if day == 1 do
         count + 1
       else
         count
       end
       cwfim(max, min, Date.add(start, 7), count)
   end
  end
end
