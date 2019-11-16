# Authoring recursive algorithms. Add comments including time and space complexity for each method.

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
def nested(s)
  return true if s.length == 0
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