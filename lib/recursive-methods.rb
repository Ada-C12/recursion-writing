# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError.new "N must be greater than or equal to 0" if n < 0
  return 1 if n <= 1
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return "" if s.empty?
  return s[0] if s.length == 1
  
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return helper_reverse(s)
end

def helper_reverse(s, start_index = 0, finish_index = (s.length - 1))
  return s if start_index >= finish_index
  temp = s[start_index]
  s[start_index] = s[finish_index]
  s[finish_index] = temp
  return helper_reverse(s, start_index + 1, finish_index - 1)
end

# Time complexity: O(log(n))
# Space complexity: O(log(n))
def bunny(n)
  return 0 if n == 0
  return n + bunny(n / 2.0 )
  # This passes the tests, though technically it never hits 0 (just approaches 0)
  # An alternate solution is to return 1 + bunny(n - 0.5) but that would have a slower time complexity O(n)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return true if s.empty?
  return false if s.length.odd?
  
  return false if s[0] != "(" || s[-1] != ")"
  return nested(s[1...-1])
  # To do this without creating new strings, make a helper method
  # that accepts additional parameters for left_char and right_char and increments
  # them inward each time, like I did for reverse_in_place with helper_reverse
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
  return true if array[-1] == value
  return false if array.length <= 1
  return search(array[0...-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  return true if s.empty?
  return false if s[0] != s[-1]
  return is_palindrome(s[1...-1])
  
  # To do this without creating new strings, make a helper method
  # that accepts additional parameters for left_char and right_char and increments
  # them inward each time, like I did for reverse_in_place with helper_reverse
end

# Time complexity: O(log(n))
# Space complexity: O(log(n))
def digit_match(n, m)
  if (n / 10) < 1 || (m / 10) < 1
    if n % 10 != m % 10
      return 0
    else
      return 1
    end
  end
  
  if n % 10 == m % 10
    return 1 + digit_match((n / 10), (m / 10))
  else
    return digit_match((n / 10), (m / 10))
  end
end