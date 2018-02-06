# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  arr.max(2).inject(0,:+)
end

def sum_to_n? arr, n
  arr.each_index { |x| return true if
    (i = arr.index(n - arr[x])) && (i != x) }
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  #s =~ /^[bcdfghjklmnpqrstvwxyz]/i
  #!!(s =~ /^[[a-z]-[aeiou]]/i)
  #Turns out ruby does not support RE subtraction.  && intersection
  !!(s =~ /^[a-z&&[^aeiou]]/i)
  # return true if s =~ /^[a-z&&[^aeiou]]/i
  # false
end

def binary_multiple_of_4? s
  !!(s =~ /^(0*1[01]*00|0+)$/)
  # if s =~ /^[01]+$/
  #   #form string to decimal
  #   #check if multiple of 4
  #   #if is multiple of 4 return true
  #   #return ((s.to_i(2) % 4) == 0)
  #   (s.to_i(2) % 4) == 0
  # else
  #   return false
  # end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0 || price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%.2f" % price
  end
  
end
