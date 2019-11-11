# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n) (stack space)
def factorial(n)
  raise ArgumentError if !n || (n < 0)
  
  return 1 if n <= 1
  
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  raise ArgumentError if !s
  
  length = s.length
  return s if length <= 1
  return s[length - 1] + reverse(s[1...(length - 1)]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n) (stack space)
def reverse_inplace(s, start_index = 0, end_index = s.length - 1)
  raise ArgumentError if !s
  
  return s if (end_index - start_index) <= 0
  
  temp_element = s[end_index]
  s[end_index] = s[start_index]
  s[start_index] = temp_element
  return reverse_inplace(s, start_index + 1, end_index - 1)
end

# Time complexity: O(n)
# Space complexity: O(n) (stack space)
def bunny(n)
  raise ArgumentError if !n
  
  return n if n <= 0  
  return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n) (stack space)
def nested(s, start_index = 0, end_index = s.length - 1)
  raise ArgumentError if !s
  
  return false if end_index == start_index
  return true if end_index < start_index
  
  if (s[end_index] == ")") && (s[start_index] == "(")
    return nested(s, start_index + 1, end_index - 1)
  end
  return false
end

# Time complexity: O(n)
# Space complexity: O(n) (stack space)
def search(array, value, start_index = 0)
  raise ArgumentError if !array || !value
  
  length = array.length
  return false if (length - 1) < start_index
  
  if start_index < length
    return true if array[start_index] == value
    return search(array, value, start_index + 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n) (stack space)
def is_palindrome(s, start_index = 0, end_index = s.length - 1)
  raise ArgumentError if !s
  return true if end_index <= start_index
  
  if s[end_index] == s[start_index]
    return is_palindrome(s, start_index + 1, end_index - 1)
  end
  return false
end

# Time complexity: O(n)
# Space complexity: O(n) (stack space)
def digit_match(n, m, count = 0, first_run = true)
  raise ArgumentError if !n || !m

  return 1 if n == 0 && m == 0 && first_run
  return count if (n == 0) || (m == 0)

  count += 1 if (n % 10) == (m % 10)
  return digit_match(n/10, m/10, count, false)
end