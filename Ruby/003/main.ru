require 'prime'

def prime_sieve(num)
  Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
end

def largest_prime_factor_of(num)
  primes = prime_sieve(num/2)
  primes.reverse!
  primes.each { |val| return val if num % val == 0}
  return 0
end

puts largest_prime_factor_of(600851475143)
