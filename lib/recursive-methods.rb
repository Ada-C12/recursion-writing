# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), because of the size of the stack (number of methods that is accumulated in the stack to run)
# Space complexity: O(n), because of the size of this stack
def factorial(n)
  #Base Case
  return 1 if n == 0
  raise ArgumentError if n < 0

  #Recursive Case
  return n * factorial(n-1)
end

# Time complexity: O(n), it will iterate through all elements of string
# Space complexity: O(1), it will always use same number of variables (i, j, memo)
def reverse(s )  
  i = 0
  j = s.length - 1

    while i < j
      memo = s[i]
      s[i] = s[j]
      s[j] = memo
      
      i += 1
      j -= 1
    end
    return s
end

# Time complexity: O(n) ~ n/2 as increasing and decreasing both pointer in same call
# Space complexity: O(n), n/2 recursive calls,
# because both pointers are moving each time the method is called
def reverse_inplace(s, i = 0, j = s.length - 1)
    #Base Case
  return s if i >= j

  #Recursive Case
      memo = s[i]
      s[i] = s[j]
      s[j] = memo
  return reverse_inplace(s, i + 1, j - 1)  

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