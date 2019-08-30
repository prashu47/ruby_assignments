#code to check the prime number and print the "number is  prime with number and similar with false condition
#when user give input with option option "-b" code will give orint only the prime numbers in given range.
#-------------------------------------------------------#
def process_number(input_array)
# input_array => ['2:5']
  range_array = input_array.first.split(":")
# => ['2','5']
  num1 = range_array.first.to_i
# => 2
  num2 = range_array.last.to_i
# => 5
  option_s = b_option(input_array)
  puts option_s.inspect
#=> for -b
  for number in num1..# frozen_string_literal: true

num2

    prime(number,option_s)
  end
# for loop to iterates the given range
end
# another method for -b option
def b_option(input_array)
   b_element = input_array.last == "-b"
end
# main method with logic and conditions
def prime(number,option_s)
  for i in (2..number-1)
# logic for prime number
    if number % i == 0
      flag =1
        break
          else
           flag = 0
          end
        end
# conditional statement for -b option
      if option_s == false
         puts "#{number} is not prime number" if (flag == 1)
      end
        puts "#{number} is prime number" if (flag == 0)
  end
  process_number(ARGV)
