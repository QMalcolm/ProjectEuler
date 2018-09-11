defmodule Numbers.Primes do
  def nth(n, max \\ 2)
  def nth(n, max) do
    primes = Numbers.ErathosthenesSieve.generate_to(max)
    if length(primes) < n do
      nth(n, max * 2)
    else
      Enum.at(primes, n - 1)
    end
  end
end
