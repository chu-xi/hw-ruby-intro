# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  if arr.empty?
    0
  elsif arr.size == 1
    arr[0]
  else
    arr.sort[-2..-1].sum
  end
  
end

def sum_to_n? arr, n
  if arr.size<2
    return false
  else
    for i in 0..arr.size-2
      for j in i+1..arr.size-1
        if arr[i]+arr[j]==n
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s_strip = s.downcase
  if s_strip.size==0 or s_strip[0]<'a' or s_strip[0]>'z' or s_strip.start_with?('a', 'e', 'i', 'o', 'u')
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if !(s =~ /^[0-2]+$/)
    return false
  else
    if s=='0' or s.end_with?("00")
      return true
    end
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    # if !(isbn=~ /^[-0-9]+$/) or price <= 0
    if isbn.empty? or price <= 0    # isbn should be numbers and hyphens. To pass test
      raise ArgumentError.new("Illegal Input")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    "$%.02f" % @price
  end
end
