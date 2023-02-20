# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  tOrF = false
  arr.combinations(2).to_a.each{|i|
    (i.sum == n) ? tOrF = true : next}
  return tOrF
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonant = false
  string =~ (/\A[^aeiou]/i) ? consonant = true : consonant = false
  return consonant
end

def binary_multiple_of_4? s
  # YOUR CODE HERE

end

# Part 3

class BookInStock
# YOUR CODE HERE
end
