def square_of_sums(int_arr)
	sum = 0
	int_arr.each { |val| sum += val }
	sum * sum
end

def sum_of_squares(int_arr)
	sum = 0
	int_arr.each { |val| sum += (val * val) }
	sum
end

def square_of_sums_minus_sum_of_squares(int_arr)
	square_of_sums(int_arr) - sum_of_squares(int_arr)
end

puts square_of_sums_minus_sum_of_squares(1..100)

