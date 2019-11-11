# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O of n because the program must perform as many operations as n. 
# Space complexity: O of n because a new function is placed on the stack for each operation

def factorial(n)
  if n < 0
    raise ArgumentError, 'Please enter a positive number' 
  elsif n == 1 || n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O of n where n is the length of the string.
# Space complexity: O of n.
def reverse(s)
  # nil case and base case
  if s.length == 0 || s.length == 1
    return s
  else 
    # recursive step
    return s[-1] + reverse(s[1..-2]) + s[0]
  end
end

# Time complexity: O of n where n is the length of the string.
# Space complexity: O of n.
def reverse_inplace(s)
  # nil case and base case
  if s.length == 0 || s.length == 1
    return s
  else 
    # recursive step
    return s[-1] + reverse_inplace(s[1..-2]) + s[0]
  end
end

# Time complexity: O of n where n is the number of bunnies :)
# Space complexity: O of n
def bunny(n)
  if n == 0
    return 0
  elsif n == 1
    return 2
  else 
    return 2 + bunny(n-1)
  end
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