# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n < 0
    raise ArgumentError
  end
  return 1 if n <= 1
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse(s)
  #web help source: https://medium.com/@txea/reverse-a-string-with-recursion-a3f8505ffb73
  reversed_str = ""
  i = 0
  while i < s.length
    reversed_str = s[i] + reversed_str
    i += 1
  end
  reversed_str
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s)
  #web help source: https://medium.com/@txea/reverse-a-string-with-recursion-a3f8505ffb73
  return s if s.length <= 1
  reversed_str = reverse_inplace(s[1..-1])
  reversed_str += s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n <= 0
    return 0
  end
  return 2 if n == 1
  return (2 + bunny(n-1))
end

# Time complexity: O(n)
# Space complexity: O(1)
def nested(s)
  if s == ""
    return true
  end
  if s.length % 2 != 0
    return false
  end
  if s[0] == "(" && s[-1] == ")"
    s.slice!(0)
    s.slice!(-1)
    nested(s)
  else
    return false        
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def search(array, value)
  if array == nil 
    return false
  end
  if array[0] != value
    array.slice!(0)
  end
  return true if value == array[0]
  return false if array.length <= 1
  
  search(array, value)
end

# Time complexity: O(n)
# Space complexity: O(1)
def is_palindrome(s)
  if s == ""
    return true
  end
  if s[0] == s[-1]
    s = s[1..-2] 
  else
    return false
  end
  
  if s.length > 1
    is_palindrome(s)
  else 
    return true
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def digit_match(n, m)
  x = 0
  if n.class == Integer 
    n = n.to_s.split('')
  end
  if m.class == Integer
    m = m.to_s.split('')
  end
  
  while n != [] || m != []
    if m[-1] == n[-1]
      x = 1
    else
      x = 0
    end
    m.pop
    n.pop
    return x + digit_match(n,m)
  end
  return 0
end