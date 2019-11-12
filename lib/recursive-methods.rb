# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 1 || n == 0
  return n * factorial(n-1)
end


# Time complexity: O(n/2) >> O(n)
# Space complexity: O(n)
def reverse(s)
  if s.length >= 2 
    temp_char = s[0]
    s[0] = s[-1]
    s[-1] = temp_char
    return s[0] + reverse(s[1...-1]) + s[-1]
  else
    return s
  end
end

# Time complexity: O(n/2) >> O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  if s.length >= 2 
    temp_char = s[0]
    s[0] = s[-1]
    s[-1] = temp_char
    return s[0] + reverse(s[1...-1]) + s[-1]
  else
    return s
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def bunny(n)
  raise ArgumentError if n < 0
  return 0 if n == 0
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return true if s.length == 0
  return false if s.length % 2 != 0
  
  if s[0] == '(' && s[-1] == ')'
    nested(s[1..-2])
  else 
    return false
  end
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  return false if array[0] == nil
  
  return true if array[0] == value
  
  search(array[1..-1], value)
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  return true if s.length <=1
  
  if s[0] == s[-1]
    is_palindrome(s[1..-2])
  else 
    return false
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  return matches if m[] == nil
  n = n.to_s.split("")
  m = m.to_s.split("")
  
  if n[-1] == =
    
    
  end
  
  p digit_match(1072503891,62530841) # 4