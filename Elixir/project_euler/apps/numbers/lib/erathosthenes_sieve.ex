defmodule Numbers.ErathosthenesSieve do
  def generate_to(max) do
    iterate(Enum.to_list(2..max))
  end

  defp iterate([]), do: []
  defp iterate([divisor | candidates]) do
    filtered_candidates = Lists.remove_factors(divisor, candidates)
    [divisor | iterate(filtered_candidates)]
  end
end
