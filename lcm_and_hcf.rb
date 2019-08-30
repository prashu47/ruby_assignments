# code to find out the lcm and hcf of two number ,when user give
# i.e. "2:4 -l" code print the lcm of both number ,and when user give
# i.e.. "2:4 -h" code print the hcf of both number .
#-------------------------------------------------------------#
def process_number(input_array)
  lcm_option = option_to_get_lcm_of_input(input_array)
  hcf_option = option_to_get_hcf_of_input(input_array)
  get_lcm_of_input if lcm_option
  get_hcf_of_input if hcf_option
  if !lcm_option && !hcf_option
    get_lcm_of_input
    get_hcf_of_input
  end
end

def option_to_get_lcm_of_input(input_array)
  index_of_l = input_array.index('-l')
  if index_of_l
    return true
  else
    return false
  end
end

def option_to_get_hcf_of_input(input_array)
  index_of_h = input_array.index('-h')
  if index_of_h
    return true
  else
    return false
  end
end

def get_lcm_of_input
  x = ARGV[0].chomp.to_i
  # puts x.inspect
  y = ARGV[1].chomp.to_i
  # puts y.inspect
  (1..(x * y)).each do |i|
    if i % x == 0 && i % y == 0
      puts "#{i} is the lcm of given numbers"
      break
    end
  end
  # puts "#{i} lcm of the numbers"
end

# puts get_lcm_of_input.i
def get_hcf_of_input
  a = ARGV[0].chomp.to_i
  b = ARGV[1].chomp.to_i
  while a % b != 0
    rem = a % b
    a = b
    b = rem
  end
  puts "#{b} is hcf of given numbers"
end
process_number(ARGV)
