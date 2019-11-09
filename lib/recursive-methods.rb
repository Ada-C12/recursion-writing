# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - the number of times the funcion is called correlates directly to n
# Space complexity: O(n) - n number of funcion calls means n amount of space in the stack taken
def factorial(n)
  raise ArgumentError if n < 0  
  if n == 0
      return 1
  end 
    return n * factorial( n - 1 )
end

# Time complexity: ? O(n/2) which becomes O(n)
# Space complexity: ? O(n) depending on how long the string passed is
def reverse(s, i = 0, j = -1)
  if i == s.length / 2
    return s
  end
  a = s[i]
  b = s[j]

  s[i] = b
  s[j] = a
  i += 1
  j -= 1
  reverse(s, i, j)
end

# Time complexity: ? O(n/2) which becomes O(n)
# Space complexity: ? O(n) depending on how long the string passed is
def reverse_inplace(s, i = 0, j = -1)
  if i == s.length / 2
    return s
  end
  a = s[i]
  b = s[j]

  s[i] = b
  s[j] = a
  i += 1
  j -= 1
  reverse_inplace(s, i, j)
end

# Time complexity: ? O(1)
# Space complexity: ? O(1)
def bunny(n)
    # raise NotImplementedError, "Method not implemented"
    return n + n
end

# # Time complexity: ?
# # Space complexity: ?
def nested(s, i = 0, j = -1)
  if s.length % 2 != 0
    return false
  elsif i == (s.length / 2)
    return true
  elsif !(s[i] == "(" && s[j] == ")") 
    return false
  end

  i += 1
  j -= 1
  nested(s, i, j)
end

# # Time complexity: ?
# # Space complexity: ?
# def search(array, value)
#     raise NotImplementedError, "Method not implemented"
# end

# # Time complexity: ?
# # Space complexity: ?
# def is_palindrome(s)
#     raise NotImplementedError, "Method not implemented"
# end

# # Time complexity: ?
# # Space complexity: ?
# def digit_match(n, m)
#     raise NotImplementedError, "Method not implemented"
# end