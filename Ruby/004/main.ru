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
	is_palendrome = false
	while i > 0 do
		j_list =* max.downto(i)
		j_index = 0
		while j_index < j_list.length do
			num = i * j_list[j_index]
			is_palendrome = is_palendrome?(num.to_s)
			break if is_palendrome
			j_index += 1
		end
		break if is_palendrome
		i -= 1
	end

	if is_palendrome
		num
	else
		nil
	end
end

puts largest_of_3_by_3
