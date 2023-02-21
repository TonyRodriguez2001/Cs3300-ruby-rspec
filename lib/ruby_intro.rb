# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #.sum returns sum of the array
  arr.sum 
end

def max_2_sum arr
  #.max(2) returns an array containing the 2 highest values
  #.sum returns the sum of the array containing the two highest values
  arr.max(2).sum
end

def sum_to_n? arr, n
  tOrF = false  #tOrF will hold the boolean value to return 

  #.comabination(2) yields a block conatining all possible 
  #combinations of length 2 of all elements in the array arr.
  #.to_a casts the block of combinations to an array of arrays 
  #of length 2 (the combinations).
  #using .each to iterate through array and checking if the 
  #sum of subarray i is equal to n.
  #if a combination that sums to n is found, then true is returned.
  #similarly, if no combination is found, false is returned.
  arr.combination(2).to_a.each{|i|
    (i.sum == n) ? tOrF = true : next}
  tOrF
end

# Part 2

def hello(name)
  #return Hello, appended with name
  "Hello, " + name
end

def starts_with_consonant? s
  #The regex below is matching the first character in the string (/A).
  #The ^ denotes any character except (aeiou\W) where \W means any non-word character
  #The i option makes the regex case-insensitive
  s =~ (/\A[^aeiou\W]/i) ? true : false

end

def binary_multiple_of_4? s
  #The regex /[^01]/ along with the !~ operator, will match 
  #if the string is ONLY composed of 1s and 0s
  #The string is also being checked to see if it is empty
  if((s !~ /[^01]/) and (!s.empty?))
    #casting the binary string (base 2) to integer and taking
    #the modulo of 4 to check if it is a multiple of 4
    (s.to_i(2) % 4 == 0) ? true : false
  else
    return false
  end

end

# Part 3

class BookInStock
  #Making isbn and price attributes accessible and allowing for modification 
  attr_accessor :isbn, :price
    
  def initialize(isbn, price)
    #ArgumentError will be raised if object is initialized with
    #an empty isbn string or a price that is <= 0
    raise ArgumentError.new("isbn can not be an empty string") if isbn.empty?
    raise ArgumentError.new("Price must be greater than zero") if price <= 0
  
  #Instance variables
  @isbn = isbn
  @price = price
  end
  
  #returning string '$' appended to a string of price with 2 decimal spots
  def price_as_string
    "$" + '%.2f' % @price
  end

end
