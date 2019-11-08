# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n is the size of the number
# Space complexity: O(n) where n is the size of the number
def factorial(n)
  raise ArgumentError.new "Number must be greater than 0" if n < 0
  return 1 if n == 0
  return n * factorial(n - 1)
end

# Time complexity: 0(n) - Where n is the length of the string
# Space complexity: 0(n^2) - Where n is the length of the string iterated over and added to the stack trace and the new array created
def reverse(s)
  return s if s.length <= 1
  reversed_str = reverse(s[1..-1])
  reversed_str += s[0]
  return reversed_str
end

# Time complexity: 0(n) - Where n is the length of the string
# Space complexity: 0(n) - Where n is the length of the string
def reverse_inplace(s)
  return s if s.length <= 1
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: 0(n) - Where n is the number of bunnies
# Space complexity: 0(n) - Where n is the number of bunnies
def bunny(n)
  return 0 if n <= 0
  return 2 + bunny(n - 1)
end

# Time complexity: log(n) - Where n is the length of the string (string essentially being cut in half by comparing first and last value in one function call)
# Space complexity: log(n)
def nested(s)
  return true if s.empty?
  return false unless s[0] == "(" && s[-1] == ")"
  return nested(s[1...-1])
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def search(array, value)
  return false if array.empty?
  return true if array[0] == value
  return search(array[1..-1], value)
end

# Time complexity: log(n) - Where n is the length of the string (string essentially being cut in half by comparing first and last value in one function call)
# Space complexity: log(n)
def is_palindrome(s)
  return true if s.empty?
  return false unless s[0] == s[-1]
  return is_palindrome(s[1...-1])
end

# Time complexity: 0(m) - Where m is the length of the shortest of the two strings
# Space complexity: 0(m) - Where m is the length of the shortest of the two strings
def digit_match(n, m)
  # return 1 if n == 0 && m == 0
  return 0 if n == 0 || m == 0
  return 0 + digit_match(n / 10, m / 10) if n % 10 != m % 10
  return 1 + digit_match(n / 10, m / 10) if n % 10 == m % 10
end
