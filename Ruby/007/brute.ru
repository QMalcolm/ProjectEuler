def is_prime?(num)
  (2..(num/2)).each do |val|
    if num % val == 0
      return false
    end
  end
  return true
end

primes = []
i = 2
while primes.length < 10001 do
  if is_prime?(i)
    primes.push(i)
  end
  i += 1
end

puts primes.last
