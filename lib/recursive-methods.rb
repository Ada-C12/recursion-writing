# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n),
#   where n is each 1 that can fit in the given number
# Space complexity: O(n),
#   because each n adds another method call to the stack
def factorial(n)
  if n < 0
    raise ArgumentError.new("#{n} is less than zero")
  elsif n <= 0
    return 1
  else
    return n * factorial(n-1)
  end
end

# Time complexity: O(n/2),
#   where n is the number of characters in the string,
#   but /2 because you're chopping off two characters each time
# Space complexity: O(n/2)
#   because you have to add another stack frame for each n,
#   but /2 because, again, you're chopping off two each time 
def reverse(s)
  if s.length == 0
    return ""
  elsif s.length == 1
    return s
  else
    # last_char = s[-1]
    # s = s.chop
    # return last_char + reverse(s)
    middle = s[1...-1]
    return s[-1] + reverse(middle) + s[0]
  end
end

# Time complexity: O(n),
#   where n is the number of characters in the string
# Space complexity: O(n),
#   because you have to add a stack frame for each character
def reverse_inplace(s)
  if s.length > 0
    last_char = s[-1]
    s.chop!
    reverse_inplace(s)
    s.insert(0,last_char)
  end
end

# Time complexity: O(n),
#   where n is the number of bunnies
# Space complexity: O(n),
#   because you have to the stack for each bunny
def bunny(n)
  if n <= 0
    return 0
  else
    return 2 + bunny(n-1)
  end
end

# Time complexity: O(n/2),
#   where n is the number of characters in the string,
#   /2 because you're chopping off the first and last each time
# Space complexity: O(n/2),
#   because you have to call the method again n/2 times,
#   adding to the stack for each call
def nested(s)
  if s.length == 0
    return true
  else
    first_parens = (s[0] == "(")
    last_parens = (s[-1] == ")")
    s[0] = ''
    s.chop!
    return first_parens && last_parens && nested(s)
  end
end

# Time complexity: O(n),
#   where n is the number of items in the array
# Space complexity: O(n),
#   because you add to the stack for each check,
#   and the number of checks depends on the number
#   of items in the array.
def search(array, value)
  if array.empty?
    return false
  elsif array.shift == value
    return true
  else
    return search(array, value)
  end
end

# Time complexity: O(n/2),
#   where n is the number of characters in the string,
#   /2 because you're chopping off the first and last each time
# Space complexity: O(n/2),
#   because you have to call the method again n/2 times,
#   adding to the stack for each call
def is_palindrome(s)
  if s.length == 0 || s.length == 1
    return true
  else
    first_and_last_match = (s[0] == s[-1])
    s[0] = ''
    s[-1] = ''
    return first_and_last_match && is_palindrome(s)
  end
end

# Time complexity: O(n), 
#   because you have to look at, at most,
#   each character in each integer
# Space complexity: O(n),
#   because you have to add a new stack frame
#   every time you chop off a character;
#   so, at most, for every character
def digit_match(n, m)  
  # first, turn integers into strings so they can be iterated over
  n = n.to_s
  m = m.to_s
  
  # base case:
  #   we've run out of characters
  #   in one or both of the inputs
  if n.length <= 0 || m.length <= 0
    return 0
  else
    # check last character
    if n[-1] == m[-1]
      count = 1
    else
      count = 0
    end
    
    # recursive case:
    #   feed in all character except the last one,
    #   which was just checked for equality
    return count + digit_match(n[0...-1], m[0...-1])
  end
  
end