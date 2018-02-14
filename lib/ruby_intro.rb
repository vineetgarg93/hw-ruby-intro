# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum_1 = 0
  arr.each do |i|
    sum_1 += i
  end
  return sum_1
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.length == 1
  arr.sort{ |x, y| y <=> x }.take(2).reduce(:+)
end

def sum_to_n? arr, n
  return false if arr.empty?
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return /^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  return true if s == "0"
	return /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
  attr_accessor :isbn
	attr_accessor :price
	
  def initialize(isbn, price)
    if isbn.empty? or price <=0
       raise ArgumentError.new("Argument not Allowed")
    end
     @isbn = isbn
     @price = price
  end
  
  def price_as_string
    sprintf("$%2.2f", @price)
  end

end
