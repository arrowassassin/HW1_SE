# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum()
end

def max_2_sum arr
  # YOUR CODE HERE
  return arr.max(2).sum()
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.permutation(2).any? {|a,b| a+b == n}
      return true
  else
      return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
      return false
  else 
      return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    if s !~ /\D/ 
      if s.split(//).last(1).join == "0" 
        return true
      end
    else
      return false
    end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn
  attr_writer :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn == nil or price <= 0 or isbn.empty?
    @isbn = isbn
    @price = price.to_f
  end
    
  def price_as_string
    sprintf("$%2.2f", @price)
  end

end
