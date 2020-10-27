# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ret=0
  arr.each{|i| ret+=i}
  return ret
end

def max_2_sum arr
  ret=0
  if arr.length!=0
    if arr.length==1
      ret = arr[0]
    else
      arr.sort!()
      ret=arr[-1]+arr[-2]
    end
  end
  return ret
end

def sum_to_n? arr, n
  for i in 0...arr.length()
    for j in i+1...arr.length()
      if arr[i]+arr[j]==n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s==''
  return false if s[0].upcase==s[0].downcase
  return false if s[0].match(/[aeiouAEIOU]/)
  
  return true
end

def binary_multiple_of_4? s
  return false if s==''
  return false if s.match(/[^0-1]/)
  return nil if s.to_i(10)%4!=0
  
  return true
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn,price)
    raise ArgumentError.new(
    "Expect ISBN not to be empty"
    ) if isbn == ""
    
    raise ArgumentError.new(
    "Expect the price value to be greater than 0"
    ) if price.to_f<=0

    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f"%price
  end
end
