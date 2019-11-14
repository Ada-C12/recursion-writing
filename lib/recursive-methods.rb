# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  if n < 0
    raise ArgumentError
  elsif (n == 1) || (n== 0)
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s) 
  if s.length == 0
    return s 
  end
  a = s[0]
  b = s.slice(1, s.length - 1)
  return reverse(b) + a 
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n == 0
    return n
  end
  
  return bunny(n - 1) + 2  
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