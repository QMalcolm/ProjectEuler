def gcd(a, b)
	if a == 0
		b
	else
		gcd(b % a, a)
	end
end

def gcd_array(int_arr)
	new_arr = []
	i = 0
	while i < int_arr.length do
		temp_arr = int_arr.clone
		temp_arr.delete(i)
		multi = 1
		temp_arr.each { |val| multi*=val }
		new_arr.push(multi)
		i += 1
	end
	result = new_arr[0]
	new_arr.each do |val|
		result = gcd(val, result)
	end
	result
end

def lcm_array(int_array)
	multi = 1
	int_array.each { |val| multi *= val}
	multi / gcd_array(int_array)
end

int_arr=*1..20
puts lcm_array(int_arr)

