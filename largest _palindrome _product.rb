#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

#----------------------------------------------------------------------------------------------------------------------------#

def largest_Palindrome
  upper_limit = 0
  999.downto(100) do |i|
    999.downto(100) do |j|
      product = i*j
      upper_limit = product if is_pallindrome(product) && (product > upper_limit)
    end
  end
  upper_limit
end
 def is_pallindrome(value)
   string = value.to_s
   string = string.reverse
 end

puts largest_Palindrome
