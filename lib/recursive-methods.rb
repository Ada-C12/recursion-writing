# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0
  return n * factorial(n - 1)
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), where n is the length of the string
def reverse(s, pointer = s.length - 1)
  return s if s == ""
  return s[pointer] if pointer == 0
  return s[pointer] + reverse(s, pointer - 1)
end

# Time complexity: O(n), where n is the length of the string. (More precisely, n/2)
# Space complexity: O(n), where n is the length of the string. (More precisely, n/2)
def reverse_inplace(s, start = 0, finish = s.length - 1)
  return s[start] if start == finish 
  return "" if start > finish
  return s[finish] + reverse_inplace(s, start + 1, finish - 1) + s[start] 
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n < 1
  return 2 if n == 1
  return 2 + bunny(n - 1)
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), where n is the length of the string
def nested(s, parens_counter = 0, pointer = 0)
  return false if parens_counter < 0
  return true if pointer == s.length && parens_counter == 0
  return false if pointer == s.length && parens_counter != 0
  return nested(s, parens_counter + 1, pointer + 1) if s[pointer] == "("
  return nested(s, parens_counter - 1, pointer + 1) if s[pointer] == ")"
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), where n is the length of the string
def search(array, value, pointer = 0)
  return false if pointer == array.length
  return true if array[pointer] == value
  return search(array, value, pointer + 1)
end

# Time complexity: O(n), where n is the length of the string (More precisely, n/2)
# Space complexity: O(n), where n is the length of the string (More precisely, n/2)
def is_palindrome(s, length = s.length, pointer = 0)
  return true if pointer > length / 2
  return false if s[pointer] != s[length - 1 - pointer]
  return is_palindrome(s, length, pointer + 1) if s[pointer] == s[length - 1 - pointer]
end

# Time complexity: O(n), where n is the length of the shorter string
# Space complexity: O(n), where n is the length of the shorter string
def digit_match(n, m, pointer = -1, matches = 0)
  return matches if (pointer).abs > n.to_s.length || (pointer).abs > m.to_s.length
  return digit_match(n, m, pointer - 1, matches + 1) if n.to_s[pointer] == m.to_s[pointer]
  return digit_match(n, m, pointer - 1, matches) if n.to_s[pointer] != m.to_s[pointer]
end