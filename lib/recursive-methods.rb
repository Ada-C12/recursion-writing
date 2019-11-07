# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError unless n >= 0
  return 1 if n == 0 || n == 1
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length < 2
  return s[1] + s[0] if s.length == 2
  
  first = s[0]
  middle = s[1..-2]
  last = s[-1]
  return last + reverse(middle) + first
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, first=0, last=s.length - 1)
  return s if first >= last
  
  tmp = s[first]
  s[first] = s[last]
  s[last] = tmp
  
  return reverse_inplace(s, first + 1, last - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1
  return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return true if s.empty?
  return false unless s[0] == "(" && s[-1] == ")"
  return nested(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
  return false if array.empty?
  return true if array[0] == value
  return search(array[1..-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  return true if s.empty? || s.length == 1
  return false unless s[0] == s[-1]
  return is_palindrome(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, count=0)
  return 1 if n == 0 && m == 0
  return count if n == 0 || m == 0
  
  if n % 10 == m % 10
    return digit_match(n/10, m/10, count.succ)
  else
    return digit_match(n/10, m/10, count)
  end
end
