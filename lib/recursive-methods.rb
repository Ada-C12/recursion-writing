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

# Time complexity: Since the recursive step is acting on two elements at a time, it's O of n/2 for even string lengths and O of n/2 + 1 for odd lengths where n is the integer length of the string.
# Space complexity: Same as time complexity. 
def reverse(s)
  # nil case and base case
  if s.length == 0 || s.length == 1
    return s
  else 
    # recursive step
    return s[-1] + reverse(s[1..-2]) + s[0]
  end
end

# Time complexity: Same as above -- O of n/2 for even string lengths and O of n/2 + 1 where n is the length of the string.
# Space complexity: Same as time complexity.
# Note: I think this is reversing in place because we're not creating any new variables?
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

# Time complexity: O of n/2 where n is an even number of parens in the string, O of n/2 + 1 when the string character count is odd. 
# Space complexity: Same as time complexity. 
def nested(s)
  if s.length == 0
    return true
  elsif s.length == 1
    return false
  elsif s.length == 2 && s[0] == ")" || s.length == 2 && s[-1] == "("
    return false
  elsif s.length == 2 && s[0] == "(" && s[-1] == ")"
    return true
  else
    s.slice!(0)
    s.slice!(-1)
    return nested(s)
  end
  return false
end

# Time complexity: O of n where n is the number of elements in the array
# Space complexity: O of n
def search(array, value)
  if array.length == 0
    return false
  elsif
    # base case
    array[0] == value
    return true
  else
    # recursive step -- delete the current value at index 0 and then search again
    array.delete_at(0)
    return search(array, value)
  end
  return false
end

# Time complexity: O of (n/2) for even counts or (n/2) + 1 for odd where n is the length of the string ... reduced to just O of n since we drop the coefficients.
# Space complexity: Same as time complexity
def is_palindrome(s)
  # base case 1
  if s.length == 0 || s.length == 1
    return true
    # base case 2
  elsif s.length == 2 && s[0] == s[-1]
    return true
    # base case 3?
  elsif s[0] != s[-1]
    return false
  else
    # recursive step
    s.slice!(0)
    s.slice!(-1)
    is_palindrome(s)
  end
end

# Time complexity: O of n/2 (n/2 + 1 if the length is odd)
# Space complexity: Same as time complexity
def digit_match(n, m)
  # make integers strings so we can use string methods on them
  n = n.to_s
  m = m.to_s
  # base case 1: there are no characters to compare
  if n.length == 0 || m.length == 0
    return 0
  # base case 2: the last characters of each string match
  else
    if n[-1] == m[-1]
      match = 1
    else
      match = 0
    end
    n.slice!(-1)
    m.slice!(-1)
  # recursive step: return match and both strings (with last character removed)
  return match + digit_match(n, m)
  end
end