# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(1) because constant is being multiplied (no arrays)
def factorial(n)
  # solve base case 
  if n < 0 
    raise ArgumentError
  end
  if n == 0 
    return 1 
  end
  if n <= 2 
    return n 
  end
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n) 
def reverse(s)
  if s.length <= 1
    return s 
  end
  return [reverse(s[1, s.length - 1]), s[0]].join
end
# substring on the left, first char on the right, put these into an arry and call .join
# https://apidock.com/ruby/Array/join

# Time complexity: O(n)
# Space complexity: O(1), no additional space used/no new arrays/strings created
def reverse_inplace(s, index = 0)
  start_index = index
  end_index = s.length - 1 - index
  
  # middle point has been found. this is basecase
  if end_index <= start_index
    return s 
  end
  # swap start and end elements
  temp = s[start_index]
  s[start_index] = s[end_index]
  s[end_index] = temp
  
  return reverse_inplace(s, index + 1) # this handles swapping middle
end

# Time complexity: O(n)
# Space complexity: O(1)
def bunny(n)
  if n < 0 
    raise ArgumentError
  end
  if n == 0 # basecase
    return n
  end
  return bunny(n - 1) + 2
end

# Time complexity: O(n)
# Space complexity: O(1)
def nested(s, index = 0) # initalize index
  start_index = index
  end_index = s.length - 1 - index
  if end_index < start_index
    return true
  end 
  if s[start_index] == '(' && s[end_index] == ')'
    return nested(s, index + 1) 
  else
    return false
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