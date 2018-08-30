def factorial(num)
  product = 1
  (num.downto(1)).each { |val| product *= val }
  return product
end

def sum_of_digits(num)
  num_array = num.to_s.split('')
  sum = 0
  num_array.each { |val| sum += val.to_i}
  return sum
end

puts sum_of_digits(factorial(100))
