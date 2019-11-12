require 'pry'
# Authoring recursive algorithms. Add comments including time and space complexity for each method.
# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError.new("BAD") if n < 0 
  return 1 if n == 0
  return n if n == 1
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length <= 1
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, i = 0)
  return s if i == s.length / 2
  s[i], s[s.length - i - 1] = s[s.length - i - 1], s[i]
  s = reverse_inplace(s, i += 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n <= 0
  return 2 + bunny(n - 1)
end

# Time complexity: O(n^2) since using .length?
# Space complexity: O(n)
def nested(s)
  return false if s.length % 2 != 0
  return true if s == ""
  return true if s == "()"
  center_l = s.length / 2 - 1
  center_r = center_l + 1
  if s[center_l] + s[center_r] != "()"
    return false
  else
    next_string = s[center_l - 1] + s[center_r + 1]
  end
  return nested(next_string)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
  return false if array.empty?
  return true if array[0] == value
  new_array = array[1..-1]
  return search(array[1..-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  return true if s.length <= 1
  if s[0] != s[-1]
    return false
  else
    next_string = s[1..-2]
  end
  return is_palindrome(next_string)
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  n = n.to_s
  m = m.to_s
  return 0 if n == nil || m == nil
  match = n[-1] == m[-1]
  if match && n.length == 1
    return 1
  elsif n.length <= 1 || m.length <= 1 # || n == nil || m == nil
    return 0 + digit_match(n[0..-2].to_i, m[0..-2].to_i)
  else
    return 1 + digit_match(n[0..-2].to_i, m[0..-2].to_i)
  end
end
