def all_factors(num)
  max = Math.sqrt(num).ceil
  divisors = [1]
  (2..max).each do |val|
    if num % val == 0
      divisors.push(val)
      divisors.push(num/val) if num/val != val
    end
  end
  return divisors.sort
end

def sum_int_arr(int_arr)
  sum = 0
  int_arr.each { |val| sum += val }
  return sum
end

sum = 0
(1...10000).each do |val|
  sum += sum_int_arr(all_factors(val))
end

puts sum
