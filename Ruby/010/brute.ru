def is_prime?(num)
  (2..(num/2)).each do |val|
    if num % val == 0
      return false
    end
  end
  return true
end

def sum_int_arr(int_arr)
  sum = 0
  int_arr.each { |val| sum += val }
  return sum
end

primes = []
i = 2
while i < 2000000 do
  if is_prime?(i)
    primes.push(i)
  end
  i += 1
end

puts sum_int_arr(primes)
