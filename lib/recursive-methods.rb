# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  return 1 if n == 0
  raise ArgumentError if n < 0

  return n * factorial(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  return reverse_recursive(s, reversed_string = "", index = -1)
end

def reverse_recursive(s, reversed_string, index)
  return reversed_string if index < -s.length
  reversed_string += s[index]
  return reverse_recursive(s, reversed_string, index - 1)
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  return reverse_inplace_recursive(s, last = s.length - 1, index = 0)
end

def reverse_inplace_recursive(s, last, index)
  return s if index >= last
  current_letter = s[index]
  s[index] = s[last]
  s[last] = current_letter
  reverse_inplace_recursive(s, last - 1, index + 1)
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  return 0 if n <= 0
  return 2 if n == 1
  return 2 + bunny(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  return true if s.empty?
  return false if s[0] != "(" || s[-1] != ")"
  return nested(s[1...-1])
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  return search_recursive(array, value, 0)
end

def search_recursive(array, value, index)
  return false if index > array.length
  return true if array[index] == value

  return search_recursive(array, value, index + 1)
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  return true if s.empty?
  return false if s[0] != s[-1]

  return is_palindrome(s[1...-1])
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  if n.digits.length > m.digits.length
    return digit_match_recursive(n.digits, m.digits, num_of_pairs = 0, index = 0)
  else
    return digit_match_recursive(m.digits, n.digits, num_of_pairs = 0, index = 0)
  end
end

def digit_match_recursive(large_num, small_num, num_of_pairs, index)
  return num_of_pairs if index == small_num.length
  if large_num[index] == small_num[index]
    num_of_pairs += 1
  end
  return digit_match_recursive(large_num, small_num, num_of_pairs, index + 1)
end
