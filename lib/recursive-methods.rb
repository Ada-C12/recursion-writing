# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  
  return 1 if n <= 1
  return n * factorial(n-1)
end

# Time complexity: O(s.length) or O(n)
# Space complexity: O(s.length) or O(n)
def reverse(s)
  return s if s.length <= 1
  
  return s[s.length-1] << reverse(s[1..-2]) << s[0]
end

# Time complexity: ?
# Space complexity: O(1)
def reverse_inplace(s)
  # How would I do this??
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  
  return 2 + bunny(n-1)
end

# Time complexity: O(s.length) or O(n)
# Space complexity: O(1)
def nested(s)
  return true if s.nil?
  return false if s.length == 1
  
  if s.length == 2
    if s == "()"
      return true
    else
      return false
    end
  end
  
  nested(s[1..-2])
end

# Time complexity: O(array.length) or O(n)
# Space complexity: O(1)
def search(array, value)
  return false if array.length == 0
  
  return true if array[0] == value
  
  search(array[1..-1], value)
end

# Time complexity: O(s.length) or O(n)
# Space complexity: O(1)
def is_palindrome(s)
  return true if s.length <= 1
  
  return false if s[0] != s[-1]
  
  is_palindrome(s[1..-2])
end

# Time complexity: O(log(n)) or O(log(m)) whichever is shorter
# Space complexity: O(log(n)) or O(log(m)) whichever is shorter
def digit_match(n, m)
  if (n % 10) == (m % 10)
    if n < 10 || m < 10
      return 1
    else
      return 1 + digit_match(n/10, m/10)
    end
  else
    if n < 10 || m < 10
      return 0
    else
      return 0 + digit_match(n/10, m/10)
    end
  end
end
