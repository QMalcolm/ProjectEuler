defmodule Problems.P003 do
  def run do
    Numbers.ErathosthenesSieve.generate_to(Kernel.trunc(:math.sqrt(600851475143)))
    |> Enum.reverse
    |> largest_factor(600851475143)
    |> IO.puts

  end

  defp largest_factor([], _num), do: nil
  defp largest_factor([head | tail], num) do
    if rem(num, head) == 0 do
      head
    else
      largest_factor(tail, num)
    end
  end
end
