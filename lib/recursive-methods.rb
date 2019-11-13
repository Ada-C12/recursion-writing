# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: o(n)
# Space complexity: o(n)
def factorial(n)
    # raise NotImplementedError, "Method not implemented"
  if n < 0
    raise ArgumentError
  elsif n <= 1
    return  1
  else 
    n * factorial(n-1)
  end 
end

# Time complexity: o(n^2)
# Space complexity: o(n^2)
def reverse(s)
    # raise NotImplementedError, "Method not implemented"
  if s.length <= 1
    return s
  else 
    return s[-1] + reverse(s[0..-2]) 
  end
end

# Time complexity: 
# Space complexity: 
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
 
end


# Time complexity: o(n)
# Space complexity: o(n)
def bunny(n)
    # raise NotImplementedError, "Method not implemented"
  if n == 0
    return 0
  else
    return 2 + bunny(n-1)
  end
end


# Time complexity: o(n)
# Space complexity: o(n^2)
def nested(s)
    # raise NotImplementedError, "Method not implemented"
  if s == ""
    return true
  elsif s[0] == "(" && s[-1] == ")" && nested(s[1...-1])
     return true
  else 
    return false
  end
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    # raise NotImplementedError, "Method not implemented"
  if array.length == 0
    return false
  elsif value == array[0]
    return true
  else 
    return search(array[1..-1], value)
  end
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