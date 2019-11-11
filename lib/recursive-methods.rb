# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) as the time it takes to run the recursion/make a stack depends on n 
# Space complexity: O(n) as the stack that is being made takes up memory and that stack depends on n 
def factorial(n)
  raise ArgumentError.new if n < 0 
  return 1 if n == 1 || n == 0  
  return n * factorial(n-1)
end

# Time complexity: O(n) as the time to reverse the string depends on string length
# Space complexity: O(n) as the stack memory to store the string letter depends on string length 
def reverse(s)
    return s if s.length <= 1
    return s.reverse
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