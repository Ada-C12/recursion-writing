# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  return 1 if n == 0
  raise ArgumentError, "must be a number greater than 0." if n < 0

  return 1 if n == 1
  return n * factorial(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?

#All the variables that you have to change would go in the parameters.
def reverse_inplace(s, first = 0, last = s.length - 1)
  #This is usually the condition in the loop, reversed. Example while first < last becuase your saying when should I stop not when should i keep going.
  if first >= last
    return s
  end
  #this is the inside of the loop
  temp = s[first]
  s[first] = s[last]
  s[last] = temp

  # this is the bottom of the loop where you say i += 1
  return reverse_inplace(s, first + 1, last - 1)
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
