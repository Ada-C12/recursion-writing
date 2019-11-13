# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(1)
def factorial(n)
  if n == 0 || n == 1
    return 1
  elsif n < 0
    raise ArgumentError
  end
  
  until n == 1 do
    return n * factorial(n-1)
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse(s)
  if s.length <= 1
    return s
  end
  
  reversed_str = reverse(s[1..-1])
  reversed_str += s[0]
  reversed_str
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s)
  if s.length <= 1
    return s
  end
  
  return s[s.length-1] + reverse_inplace(s[0, s.length-1])
end

# Time complexity: O(n)
# Space complexity: O(1)
def bunny(n)
  if n == 0
    return 0
  elsif n == 1
    return 2
  else
    return 2 + bunny(n - 1)
  end
  
  return return_bunny
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  raise NotImplementedError, "Method not implemented"
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