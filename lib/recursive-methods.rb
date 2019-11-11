# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0

  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length <= 1

  new_string = reverse(s[1..-1])
  new_string += s[0]

  return new_string
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return s if s.length <= 1
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return true if s.empty?
  return false if s.length.odd?
  return false if s[0] == s[-1]
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
  return true if s.length <= 1
  return false if s.length.even?
  return true if s[0] == s[-1]
  return is_palindrome(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, sum = 0)
  n = n.to_s
  m = m.to_s

  return sum += 1 if (n.length == 1 || m.length == 1) && n[-1] == m[-1]
  return sum if n.length == 1 || m.length == 1

  if n[-1] == m[-1]
    sum += 1
  end

  return digit_match(n[0...-1], m[0...-1], sum)
end
