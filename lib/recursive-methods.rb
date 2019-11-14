# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) -- I think all of my methods might be this space/time complexity but not positive!
# Space complexity: O(n)
def factorial(num)
  raise ArgumentError if num < 0
  return num * factorial(num - 1)
end

# Time complexity: 0(n)
# Space complexity: O(n)
def reverse(s)
  if s.length > 1 then 
    ((s[s.length - 1, 1] = s[(s.length - (s.length + 1)), 1]) + reverse_recursive(s.length - 1))
  else 
    s 
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return s if s.length <= 1
  reversed_str = reverse(s[1..-1])
  reversed_str += s[0]
  reversed_str
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n < 1
  return 2 if n == 1
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return true if s.length == 0
  if s[0] == "(" && s[-1] == ")"
    return nested(s[1..s.length-2])  
  else 
    return false
  end
end
# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
  return false if array.empty?
  return true if array[index] == value
  return search(array[1..-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  return true if s.empty? || s.length == 1
  return false if s[0] != s[s.length -1]
  return is_palindrome(s, 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
  n = n.to_s
  m = m.to_s
  return 0 if n[-1] == nil || m[-1] == nil
  if n[-1] == m[-1]
    return 1 + digit_match(n[0..-2], m[0..-2])
  else
    return digit_match(n[0..-2], m[0..-2])
  end
end