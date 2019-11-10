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

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n <= 0
    return 0
  end
  return 2 if n == 1
  return (2 + bunny(n-1))
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  if array[0] != value
    array.slice!(0)
  end
  return true if value == array[0]
  return false if array.length <= 1
  
  search(array, value)
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