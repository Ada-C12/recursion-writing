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

# Time complexity: O(n/2)
# Space complexity: O(n/2), because you're chopping off two each time
def reverse(s)
  if s.length == 0
    return ""
  elsif s.length == 1
    return s
  else
    # last_char = s[-1]
    # s = s.chop
    # return last_char + reverse(s)
    middle = s[1...-1]
    return s[-1] + reverse(middle) + s[0]
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  if s.length > 0
    last_char = s[-1]
    s.chop!
    reverse_inplace(s)
    s.insert(0,last_char)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n <= 0
    return 0
  else
    return 2 + bunny(n-1)
  end
end

# Time complexity: O(n/2)
# Space complexity: O(n/2)
def nested(s)
  if s.length == 0
    return true
  else
    middle = s[1...-1]
    return s[0] == "(" && s[-1] == ")" && nested(middle)
  end
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