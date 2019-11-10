# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O of n because the program must as many operations as n. 
# Space complexity: O of n because a new line is placed on the stack for operation

# def factorial(n)
#   # base case
#   if n == 1
#     return 1
#     # recursive step
#   else
#     return n * factorial(n-1)
#   end
# end

def factorial(n)
  if n < 0
    raise ArgumentError, 'Please enter a positive number' 
  elsif n == 1 || n == 0
    return 1
  else
    return n * factorial(n - 1)
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