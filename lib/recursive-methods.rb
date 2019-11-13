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
# Space complexity: O(n)
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

# Time complexity: O(n) - worst case
# Space complexity: O(n) - worst case
def search(array, value)
  return false if array[0] == nil
  
  return true if array[0] == value
  
  search(array[1..-1], value)
end

# Time complexity: O(n/2) => O(n)
# Space complexity: O(n/2) => O(n)
def is_palindrome(s)
  return true if s.length <=1
  
  if s[0] == s[-1]
    is_palindrome(s[1..-2])
  else 
    return false
  end
end

# Time complexity: O(n) n is the length of the shortest array
# Space complexity: O(n)
def digit_match(n, m)
  if n.class == Integer
    n = n.to_s.split("")   # [1, 0, 7, 2, 5, 0, 3, 8, 9, 1]
  end
  
  if m.class == Integer 
    m = m.to_s.split("")   #       [6, 2, 5, 3 ,0, 8, 4, 1]
  end
  
  return n.length if n[-1] == nil || n[-1] == "match" 
  
  return m.length if m[-1] == nil || m[-1] == "match"
  
  if n[-1] == m[-1]
    n.insert(0, "match")
    m.insert(0, "match")
  end
  
  digit_match(n[0..-2], m[0..-2])
  
end
