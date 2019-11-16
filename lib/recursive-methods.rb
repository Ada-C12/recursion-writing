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

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n == 0
    return 0
  elsif n == 1
    return 2 
  else
    2 + bunny(n - 1)
  end 
end

# Time complexity: O(n)
# Space complexity: O(n)

def nested(string)
  if string.length % 2 != 0
    return false
  else 
    recursion(string, 0, string.length - 1)
  end 
end

def recursion(string, start_index, end_index)
  if start_index > end_index
    return true
  elsif string[start_index] == "(" && string[end_index] == ")"
    return recursion(string, start_index + 1, end_index - 1)
  else
    return false
  end 
end 

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  if array == []
    return false
  else
    return search_helper(array, value, i)
  end 
end

def search_helper(array, value, i)
  if array[i] == value
    return true 
  else
    recursion(array, value, i += 1)
  end 
end 

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  return is_palindrome(s, 0, s.length - 1 )
end

def is_palindrome(s, start_index, end_index)
  if start_index < end_index
    return true
  elsif s[0] != s[s.length - 1]
    return false
  else
    is_palindrome(s, start_index + 1, end_index - 1)
  end 
end 

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end