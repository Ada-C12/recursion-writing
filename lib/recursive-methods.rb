# Authoring recursive algorithms. Add comments including time and space complexity for each method.
# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError.new("BAD") if n < 0 
  return 1 if n == 0
  return n if n == 1
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length <= 1
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s, i = 0)
  return s if i == s.length / 2
  s[i], s[s.length - i - 1] = s[s.length - i - 1], s[i]
  s = reverse_inplace(s, i += 1)
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  return 0 if n <= 0
  return 2 + bunny(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  return false if s.length % 2 != 0
  return true if s == ""
  return true if s == "()"
  center_l = s.length / 2 - 1
  center_r = center_l + 1
  if s[center_l] + s[center_r] != "()"
    return false
  else
    next_string = s[center_l - 1] + s[center_r + 1]
  end
  return nested(next_string)
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
