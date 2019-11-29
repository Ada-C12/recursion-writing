# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is the value of n
# Space complexity: O(n) - where n is the stack frames 
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n^2), where n is the length of s - O(n) for recursion & O(n) for creating new array within each recursive call
# Space complexity: O(n^2), O(n) for stack frames & O(n) for creating new array within each stack frame ("s[0..-2]")
def reverse(s)
  return s if s.length <= 1
  return s[-1] + reverse(s[0..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace_helper(s, i, j)
  return s if i >- j

  temp = s[i]
  s[i] = s[j]
  s[j] = temp
  
  return reverse_inplace_helper(s, i+1, j-1)
end

def reverse_inplace(s)
  return reverse_inplace_helper(s, 0, s.length - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n - 1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def nested(s)
  return true if s.length == 0
  return false if s[0] == s[-1]
  nested(s[1..-2])
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def search(array, value)
  return false if array.length == 0
  return true if array[0] == value
  search(array[1..-1], value)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def is_palindrome(s)
  return true if s.length <= 1
  return false if s[0] != s[-1]
  is_palindrome(s[1..-2])
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def digit_match(n, m)
  n = n.to_s
  m = m.to_s
  digit_match_private(n, m, 0)
end

def digit_match_private(n, m, count)
  return count if n[-1] == nil || m[-1] == nil
  count += 1 if n[-1] == m[-1]
  digit_match_private(n[0..-2], m[0..-2], count)
end