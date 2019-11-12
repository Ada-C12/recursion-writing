# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), the amount of recursive calls depends on the size of n.
# Space complexity: O(n), each recursive call is added to the stack. 
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 1 || n == 0
  
  return n * factorial(n - 1)
end

# Time complexity: O(n), the amount of recursive calls depends on the size of the string.
# Space complexity: O(n), each recursive call is added to the stack. 
def reverse(s)
  return s if s.length <= 1
  
  reversed_s = reverse(s[1..-1])
  reversed_s += s[0]
  return reversed_s
end

# Time complexity: O(n), the amount of recursive calls depends on the size of the string.
# Space complexity: O(n), each recursive call is added to the stack. 
def reverse_inplace(s, low = 0, high = s.length-1)
  return s if high-low <= 1
  
  temp = s[low]
  s[low] = s[high]
  s[high] = temp
  
  return reverse_inplace(s, low+1, high-1)
end

# Time complexity: O(n), the amount of recursive calls depends on the size of n.
# Space complexity: O(n), each recursive call is added to the stack. 
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1
  
  return 2 + bunny(n-1)
end

# Time complexity: O(n), the amount of recursive calls depends on the size of the string.
# Space complexity: O(n), each recursive call is added to the stack. 
def nested(s)
  return true if s.length == 0
  
  if s[0] == "(" && s[-1] == ")"
    return nested(s[1..s.length-2])
  else 
    return false
  end
  
end

# Time complexity: O(log n), the amount of searches is cut in half with every recursive call.
# Space complexity: O(n), each recursive call is added to the stack. 
def search(array, value, low = 0, high = array.length-1)
  mid = (high + low) / 2
  return true if array[mid] == value
  return false if high < low
  
  if array[mid] > value
    return search(array, value, low, high = mid-1)
  else
    return search(array, value, low = mid + 1, high)
  end
end

# Time complexity: O(n), the amount of recursive calls depends on the size of the string.
# Space complexity: O(n), each recursive call is added to the stack. 
def is_palindrome(s)
  return true if s.length == 1 || s.length == 0
  
  if s[0] == s[-1]
    return is_palindrome(s[1..-2])
  else
    return false
  end
  
end

# Time complexity: O(n), the amount of recursive calls depends on the size either of n or m.
# Space complexity: O(n), each recursive call is added to the stack. 
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
