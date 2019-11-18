# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  if n == 0 || n == 1
    return 1
  elsif n < 0
    raise ArgumentError
  end
  return n * factorial(n-1)
  # return times(n, factorial(n-1))
end



# Time complexity: ?
# Space complexity: ?
def reverse(s)
    if s.length == 1 || s == ""
      return s
    else
      return reverse(s[1..-1]) + s[0]
    end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  if s.length == 1 || s == ""
    return s
  else
    return reverse(s[1..-1]) + s[0]
  end
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