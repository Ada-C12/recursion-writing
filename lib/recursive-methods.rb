# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 1 || n == 0
  return n * factorial(n-1) if n > 1
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length <= 1
  return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, i = 0, j = s.length - 1)
  if i >= j
    return s
  else
    x = s[j]
    y = s[i]
    s[i] = x
    s[j] = y
    reverse_inplace(s, i += 1, j -= 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n - 1) if n > 0
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return false if s.length.odd?
  return true if s.length == 0
  return false if s[0] != "(" || s[-1] != ")"
  return nested(s[1..-2]) if s.length > 0
end

# Time complexity: o(n)
# Space complexity: O(n)
def search(array, value, i = 0)
  return false if i == array.length
  return true if array[i] == value
  return search(array, value, i += 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, start_index = 0, last_index = s.length - 1)
  return false if s[start_index] != s[last_index]
  return true if start_index > last_index
  return is_palindrome(s, start_index += 1, last_index -= 1)
end

# Time complexity: O(n) - where n is the number with less digits
# Space complexity: O(n) - where n is the number with less digits
def digit_match(n, m, match_count = 0)
  n = n.to_s
  m = m.to_s
  
  return match_count if n[-1] == nil || m[-1] == nil
  return digit_match(n[0..-2], m[0..-2], match_count += 1) if n[-1] == m[-1]
  return digit_match(n[0..-2], m[0..-2], match_count)
end
