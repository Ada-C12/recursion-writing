# Authoring recursive algorithms. Add comments including time and space complexity for each method.

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

# i = 0

# mid = s.length/2.to_i
# while i < mid
#   a = s[i]
#   s[i] = s[s.length - 1 - i]
#   s[s.length - 1 - i] = a 
#   i += 1 
# end 

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n <= 1
    return  n* 2
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