# Authoring recursive algorithms. Add comments including time and space complexity for each method.
# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  return raise ArgumentError if n < 0
  return 1 if n == 1 || n == 0
  return n * factorial(n-1) if n > 1
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length == 1 || s.empty?
  return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n) if I had gotten it to work
# Space complexity: O(n)
def reverse_inplace(s)
  return s if s.length == 1 || s.empty? || s[0] == s[-1]
  while s.length > 0
    x = s[0]
    y = s[-1]
    s[-1] = x
    s[0] = y
    return reverse_inplace(s[1..-2])
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n - 1) if n >= 1
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return true if s.empty?
  return nested(s[1..-2]) if s[0] == "(" && s[-1] == ")"
  return false
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
  return is_palindrome(s[1..-2])if s[0] == s[-1]
  return false
end

# Time complexity: O(log(n))
# Space complexity: O(log(n))
def digit_match(n, m)
  return 1 if n == 0 && m == 0
  return 0 if n == 0 || m == 0
  return 1 if n.digits[0] == 0 && m.digits[0] == 0
  return 0 + digit_match(n / 10, m / 10) if n % 10 != m % 10
  return 1 + digit_match(n / 10, m / 10) if n % 10 == m % 10
end
