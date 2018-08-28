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
	max = 999
	i = max
	num = 0
	our_palendrome = 1
	is_palendrome = false
	while i > 0 do
		j_list =* max.downto(i)
		j_index = 0
		while j_index < j_list.length do
			num = i * j_list[j_index]
			puts "Checking #{i} * #{j_list[j_index]} = #{num}"
			is_palendrome = is_palendrome?(num.to_s)
			if is_palendrome
				our_palendrome = num if num > our_palendrome
				break
			end
			j_index += 1
		end
		i -= 1
	end

	our_palendrome
end

puts largest_of_3_by_3
