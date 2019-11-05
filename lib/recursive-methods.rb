# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) as n gets bigger, you make that many recursive calls
# Space complexity: O(n) due to taking up space on the system stack
def factorial(n)
  return 1 if n == 0

  raise ArgumentError, "Value must be greater than or equal to 0" if n < 0

  return n * factorial(n - 1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2). s[1..-1] creates a new string
def reverse(s)
  return s if s.length <= 1

  rev_str = reverse(s[1..-1])
  rev_str += s[0]
  rev_str
end

# Time complexity: O(n) n is the length of the string s
# Space complexity: O(n)
def reverse_inplace(s, left_indx = 0, right_indx = s.length - 1)
  return s if left_indx >= right_indx
  s[left_indx], s[right_indx] = s[right_indx], s[left_indx]

  return reverse_inplace(s, left_indx + 1, right_indx - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0

  return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, left = "(", right = ")")
  return true if s.empty?
  return false if s.count(left) != s.count(right)
  return true if s[s.length / 2] == right && s[(s.length / 2) - 1] == left
  return false if left.length.odd?

  return nested(s, left, right)
end

# Time complexity: O(n) possibly going through the entire array linearly
# Space complexity: O(n) potentially calling search a number of times equal to the length of the array
def search(array, value, index = 0)
  return false if index >= array.length
  return true if array[index] == value

  return search(array, value, index + 1)
end

# Time complexity: O(n^2) looping through the new string
# Space complexity: O(n^2) because s[1...-1] creates a new string
def is_palindrome(s)
  if s == ""
    return true
  end
  if s[0] != s[-1]
    return false
  end
  return is_palindrome(s[1...-1])
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  if n == m
    return 1
  elsif m == 0 || n == 0
    return 0
  end

  # digits creates a new array so I'm assuming this would take up additional space
  if n.digits[0] == 0 && m.digits[0] == 0
    return 1
  end

  if m % 10 == n % 10
    return digit_match(n / 10, m / 10) + 1
  end
  return digit_match(n / 10, m / 10)
end
