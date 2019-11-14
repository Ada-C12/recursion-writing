# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n < 0
    raise ArgumentError
  elsif n == 0 || n == 1
    return 1
  else
    return n * (factorial(n - 1))
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  if s.length <= 1
    return s
  else
    return reverse(s[1..-1]) + s[0]
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    raise NotImplementedError, "Method not implemented"
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

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  if s.length == 1 || s.length == 0
    return true
  end

  if s[0] != s[-1]
    return false
  end

  return is_palindrome(s[1...-1])
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end