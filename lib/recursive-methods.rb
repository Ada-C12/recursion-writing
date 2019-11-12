# Authoring recursive algorithms. Add comments including time and space complexity for each method.
require "pry"
# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError, 'Must provide a number greater than 1' unless n >= 0

  if n == 1 || n == 0
    return 1
  else
    return n * factorial(n - 1)
  end 
  
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)

  return s if s.length <= 1

  last = s[-1]

  rest = s[0...-1]

  return last + reverse(rest)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(string)
  return _reverse(string, 0, string.length - 1)
end

def _reverse(string, i, j)
  if j - i <= 0
    return string
  else
    swap(string, i, j)
    return _reverse(string, i += 1, j -=1)
  end 
end 

def swap(string, i, j)
  a = string[i]
  string[i] = string[j]
  string[j] = a
end 

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n <= 1
    return  n * 2
  else
    return 2 + bunny(n - 1)
  end 
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end