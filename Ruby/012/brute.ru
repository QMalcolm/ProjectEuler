num = 0
triangle_number = 0
loop do
  num += 1
  triangle_number += num
  puts "Checking #{triangle_number}"
  divisors = []
  for i in 1..triangle_number do
    break if (triangle_number - i) + divisors.length < 500
    divisors.push(i) if triangle_number % i == 0
  end
  break if divisors.length >= 500
end

puts "#{triangle_number} is the first triangle number that has at least 500 divisors"
puts "The divisors are #{divisors}"
