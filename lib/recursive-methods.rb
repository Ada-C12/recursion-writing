# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
  return s if s.length <= 1 
  rev_s = reverse(s[1..-1])
  rev_s += s[0]
  return rev_s
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, first = 0, last = s.length - 1)
  return s if first >= last
  temp = s[first]
  s[first] = s[last]
  s[last] = temp
  
  return reverse_inplace(s, first + 1, last - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n <= 0
  return 2 if n == 1
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, i = 0)
  string = s.split("()")
  return false if s.length.odd?
  return true if s.empty? 
  
  return true if s.length.even? && string[i].length == string[i+1].length
  return false if s.length.even? && string[i].length != string[i+1].length
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
  return false if index >= array.length
  return true if array[index] == value
  return search(array, value, index + 1)
end 

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def is_palindrome(s)
  return true if s.length <= 1
  return false if s[0] != s[-1]
  return is_palindrome(s[1...-1])
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
  return 1 if n == 0 && m == 0
  return 0 if n == 0 || m == 0
  return 1 if n.to_s[-1] == m.to_s[-1]
end
