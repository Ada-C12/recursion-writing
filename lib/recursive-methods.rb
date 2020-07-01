# # Authoring recursive algorithms. Add comments including time and space complexity for each method.

# # Time complexity: O(n)
# # Space complexity: O(n)
# def factorial(n)

#   raise ArgumentError unless n >= 0 
#   return 1 if n == 1 || n == 0

#   n * factorial(n - 1)

# end


# Time complexity: O(n)
# Space complexity: O(n) - I think O(n) because n amount of memory will be used to create the stack during the recursive call. I am creating a variable, but only concat. onto the existing one (<<) rather than creating a new variable each time (+=) so I think the memory allocation for the variable is O(1).

def reverse(s)

  return s if s.length <= 1
  reversed = reverse(s[1..-1])
  reversed << s[0]

end


# # Time complexity: ?
# # Space complexity: ?
# def reverse_inplace(s)
#   raise NotImplementedError, "Method not implemented"
# end

# # Time complexity: ?
# # Space complexity: ?
# def bunny(n)
#     raise NotImplementedError, "Method not implemented"
# end

# # Time complexity: ?
# # Space complexity: ?
# def nested(s)
#     raise NotImplementedError, "Method not implemented"
# end

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