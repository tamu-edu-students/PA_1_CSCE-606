# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  tot = 0

  for i in arr
    tot += i
  end

  return tot
end

def max_2_sum(arr)
  # YOUR CODE HERE
  tot = 0

  sorted_arr = arr.sort()
  for i in sorted_arr
    if arr.length == 1
      return arr[0]
    end
    tot = sorted_arr[-1] + sorted_arr [-2]
  end

  return tot

end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  for i in arr
    difference = number - i

    if difference == i
      if arr.count(i) >= 2
        return true
      end
    elsif arr.include?(difference)
      return true
    end
  end

  return false


end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end


def starts_with_consonant?(string)
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","r","s","t","v","y","x","z","w","q"]
  if string == ""
    return false
  elsif consonants.include?(string[0].downcase)
    return true
  else
    return false
  end
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  char = string.chars

  if string == ""
    return false
  end

  for i in char
    if i != "1" && i != "0"
      return false
    end
  end

  number = string.to_i(2)

  if number % 4 == 0
    return true
  else
    return false
  end

  
  
end

# # Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn == "" || price<= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price= price 
  end

  def price_as_string
    return "$%.2f" % @price
  end
end


answer = sum([1,2,3,4,5])
puts(answer)

answer2 = max_2_sum([1,3,8,4,2])
puts(answer2)

answer3 = sum_to_n?([1,2,4,6,8], 17)
puts(answer3)

answer3 = sum_to_n?([1,2,4,6,8], 4)
puts(answer3)

answer4 = hello("Can")
puts(answer4)

answer5 = starts_with_consonant?("Software Engineering")
puts(answer5)

answer5 = starts_with_consonant?("")
puts(answer5)

answer6 = binary_multiple_of_4?("testing")
puts(answer6)

answer6 = binary_multiple_of_4?("100")
puts(answer6)

answer6 = binary_multiple_of_4?("")
puts(answer6)

bookinstock = BookInStock.new("1" , 69.99 )
puts bookinstock.isbn
puts bookinstock.price
