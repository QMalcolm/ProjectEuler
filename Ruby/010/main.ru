require 'prime'

def prime_sieve(num)
  Prime::EratosthenesGenerator.new.take_while {|i| i <= num}
end

def sum_int_arr(int_arr)
  sum = 0
  int_arr.each { |val| sum += val }
  return sum
end

puts sum_int_arr(prime_sieve(2000000))
