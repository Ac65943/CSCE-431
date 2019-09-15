# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # Start Code
  array=arr
  if array.empty? == true
    return 0
  end
  sum=0
  for a in array do
    sum+=a
  end
  return sum
  # End of Code
end

def max_2_sum(arr)
  # Start of Code
  array=arr
  if array.empty? == true
    return 0
  end
  if array.length == 1
    return array[0]
  end
  max=-9999
  max2=0
  for a in array do
    if a >= max
      max2=max
      max=a
    elsif a>max2
      max2=a
    end
  end
  sum=max+max2
  return sum
  # End of Code
end

def sum_to_n?(arr, n)
  # Start of Code
  array=arr
  if array.empty? == false
    for a in array do 
      for b in array-[a] do 
        sum=a+b
        if sum == n
          return true
        end
      end
    end
  end
  return false
  # End of Code
end

# Part 2
def hello(name)
  # Start of Code
  string= "Hello, "+ name
  return string
  # End of Code
end

def starts_with_consonant?(s)
  # Start of Code
  vowels=['A','E','I','O','U']
  letters=('A'..'Z')
  if s.empty? == true
    return false
  end
  start=s[0].capitalize
  startBool= vowels.include? start
  letterBool= letters.include? start
  if startBool == true
    print "Hello"
    return false
  end
  if letterBool == false
    return false
  end
  return true
  # End of Code
end

def binary_multiple_of_4?(s)
  # Start of Code 
  string=s
  string=string.downcase
  bool=string.scan(/\D/).empty?
  if bool == false or string.empty? == true
    return false
  end
  decminal = string.to_i(2)
  if decminal % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  # Start of Code
  attr_reader :isbn,:price
  attr_writer :isbn,:price
  def initialize(isbn,price)
    if isbn.empty? == true or price<=0
      raise ArgumentError
    end
    @isbn=isbn
    @price=price
  end
  def price_as_string
    num='%0.2f' % price
    string="$" + num.to_s
    return string
  end
  # End of Code
end
