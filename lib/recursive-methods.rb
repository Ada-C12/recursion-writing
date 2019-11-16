# Authoring recursive algorithms. Add comments including time and space complexity for each method.
require 'pry'
# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n < 0
    raise ArgumentError
  end
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
# I think this is reversing the string in place?
def reverse(s)
  return s if s.length <= 1
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return s if s.length <= 1
  return reverse_inplace(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return n if n == 0
  return 2 + bunny(n-1)
end

# Time complexity: ?
# Space complexity: ?
# NOT PASSING TESTS
def nested(s)
  return true if s.length == 0
  # need to check if s = even number of paren-pairs()
  # return true if s.length % 2 == 0
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, i = 0)
  return false if i >= array.length
  return true if array[i] == value
  return search(array, value, i + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
# ONLY PASSING 2 TESTS
def is_palindrome(s, l = 0, r = s.length-1 )
  if s[l] == s[r]
    return true
  else
    return false
  end

  while l < s.length
    return is_palindrome(s, l + 1, r - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
# NOT PASSING TESTS
def digit_match(n, m, i = -1)
# i want to check each index from the end and keep track of matching values
  n = n.to_s
  m = m.to_s
  tracker = 0

  if n[i] == m[i]
    tracker += 1
  else
    tracker += 0
  end

  return tracker if i < -(n.length)

  return digit_match(n, m, i - 1)
end