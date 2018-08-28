def is_palendrome?(string)
	palendrome = true
	i = 0
	while i <= string.length/2 do
		palendrome = string[i] == string[string.length - (i + 1)]
		break unless palendrome
		i += 1
	end
	palendrome
end

def largest_of_3_by_3()
	i = 999
	j = 999
	num = 0
	is_palendrome = false
	while i > 0 or j > 0 do
		num = i * j
		is_palendrome = is_palendrome?(num.to_s)

		break if is_palendrome

		if i > j
			i -= 1
		else
			j -= 1
		end
	end
	num
end

puts largest_of_3_by_3
