# Authoring recursive algorithms. Add comments including time and space complexity for each method.
# https://github.com/stupendousC/recursion-writing

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if (n == 1) || (n == 0)
    return 1
  elsif n > 1
    return n * factorial(n-1)
  else
    raise ArgumentError, "argument must be >= 0"
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  # accepts a string and returns the reverse of the string by reversing all letters and all words in the string
  # ex: reverse("hello world") will convert the input string to "dlrow olleh"
  if s.length <= 1
    return s 
  else
    return s[-1] + reverse(s[1...-1]) + s[0]
  end
  
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s)
  #  accepts a string as a parameter and then reverses the string IN PLACE using a recursive algorithm.
  
  ### I'M NOT SURE IF I'M ALLOWED TO SOLVE THE PROBLEM THIS WAY...
  left_index = 0
  right_index = s.length - 1
  
  while left_index < right_index
    s = swap(s, left_index, right_index)
    left_index += 1
    right_index -= 1
  end
  
  return s
end

# helper method, which will be called as a recursive function
def swap(s, left_index, right_index)
  temp = s[left_index] 
  s[left_index] = s[right_index]
  s[right_index] = temp
  return s
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  #   N represents a number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).
  if n == 0
    # base case: no bunnies left
    return 0
  elsif n >= 1
    # recurse
    return 2 + bunny(n-1)
  else
    # no negative bunnies
    raise ArgumentError
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def nested(s)
  # puts "\nTESTING ON #{s}"
  
  # read from front until ( is found, return false if ) instead
  i = 0
  left_paren_found = false
  while s[i] && left_paren_found==false
    if s[i] == ")"
      # puts "NOPE"
      return false
    elsif s[i] != "("
      i += 1
    else  
      # puts "\tfound ( at index #{i}"
      left_paren_found = true
    end
  end
  
  # read from back until ) is found, return false if ( instead
  j = s.length-1
  right_paren_found = false
  while s[j] && right_paren_found==false
    if s[j] == "("
      # puts "BUSTED"
      return false
    elsif s[j] != ")"
      j -= 1
    else  
      # puts "\tfound ) at index #{j}"
      right_paren_found = true
    end
  end
  
  if (right_paren_found && left_paren_found) && (i < j)
    # puts "recursion..."
    return nested(s[i+1...j])
  elsif !right_paren_found && !left_paren_found
    return true
  else
    return false
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def search(array, value)
  # accepts an unsorted array of integers and an integer value to find and then 
  # returns true if the value if found in the unsorted array and false otherwise. 
  if array.empty?
    return false
  end
  if array[0] == value
    return true
  else 
    array.shift
    return search(array, value)
  end
  
end

# Time complexity: O(n)
# Space complexity: O(1)
def is_palindrome(s)
  if (s.length == 0) || (s.length == 1)
    return true
  elsif s[0] == s[-1]
    return is_palindrome(s[1...-1])
  else
    return false
  end
end

# Time complexity: O(n), where n is the longer number
# Space complexity: O(n)
def digit_match(n, m)
  # puts "digit_matching #{n} vs #{m}"
  # puts "comparing #{n%10} vs #{m%10}"
  
  if n>9 && m>9
    # recurse-able condition
    if n%10 == m%10
      return 1 + digit_match(n/10,m/10)
    else
      return 0 + digit_match(n/10, m/10)
    end
    
  else
    # no need to recurse, n and/or m already on single digits
    if n%10 == m%10
      return 1
    else
      return 0
    end
  end
  
end


# Added Fun
# Time complexity: O(n*2^n), almost I think.  
# It'll go n-1 levels deep, with up to 2^n leaves, so n*2^n...
# Space complexity: O(n*2^n)...?  not sure
def fib(n)
  # returns the nth fibonacci number
  # e.g. fib(4) = (0 1 1 2 3) should return 3
  # Try it with a large number (> 100), what do you notice happening?
  # it got a lot slower as n increases, really noticeable around n=40
  
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    # generate fib seq up to the n-th index place
    return fib(n-1) + fib(n-2)
  end
end

### to see fib(n) in action, uncomment chunk below
# n = 0
# while n < 200
#   puts "\n\nn = #{n}"
#   p fib(n)
#   n+= 1
# end