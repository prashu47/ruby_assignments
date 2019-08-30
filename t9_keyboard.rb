def process_string(input_array)
	puts input_array.inspect
	# get the string from input
	input_string = get_string_from_input(input_array)

	# process the string for t9 and print
	process_string_to_t9(input_string)
end

def get_string_from_input(input_array)
	return input_array.join(" ")
end

def process_string_to_t9(input_string)
		tnine_hash = {"a" => 2 , "b" => 22 , "c" => 222,
								  "d" => 3 , "e" => 33 , "f" => 333,
									"g" => 4 , "h" => 44 , "i" => 444,
									"j" => 5 , "k" => 55 , "l" => 555,
									"m" => 6 , "n" => 66 , "o"  => 666,
									"p" => 7 , "q" => 77 , "r" => 777, "s" => 7777,
									"t" => 8 , "u" => 88 , "v" => 888,
									"w" => 9 , "x" => 99 , "y" => 999,
									"z" => 9999, " " => 0}

		input_character_array = input_string.split("")
		input_character_array.each do |character|
			puts tnine_hash[character]
		end
end


process_string(ARGV)
