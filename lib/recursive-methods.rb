# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is each 1 that can fit in the given number
# Space complexity: O(n), because each n adds another method call to the stack
def factorial(n)
  if n < 0
    raise ArgumentError.new("#{n} is less than zero")
  elsif n <= 0
    return 1
  else
    return n * factorial(n-1)
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  raise NotImplementedError, "Method not implemented"
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