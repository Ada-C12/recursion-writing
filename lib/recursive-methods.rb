# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0 || n == 1
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse(n)
  i = 0
  j = n.length - 1 
  while i < j
    temp = n[i]
    n[i] = n[j]
    n[j] = temp 
    i += 1
    j -= 1
  end
  return n 
end 

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, i = 0, j = s.length - 1)
  return s if i >= j
  temp = s[i]
  s[i] = s[j]
  s[j] = temp 
  return reverse_inplace(s, i+1, j-1) 
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1
  return bunny(n - 1) + bunny(1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, i = 0, left = 0)
  return left == 0 if i == s.length
  if s[i] == '('
    left += 1
  else
    if left > 0
      left -= 1
    else
      return false
    end
  end
  nested(s, i + 1, left)
end

# Time complexity: O(log2(n))
# Space complexity: O(log2(n))
def search(array, value, l = 0, r = array.length - 1)
  return false if array.empty? || l > r
  mid = l + (r - l) / 2
  array.sort!
  return true if array[mid] == value 
  return search(array, value, l, mid - 1) if array[mid] > value
  return search(array, value, mid + 1, r) if array[mid] < value
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, i = 0, j = s.length - 1)
  return true if s == '' || i >= j
  return false if s[i] != s[j]
  is_palindrome(s, i + 1, j - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, i = -1, count = 0)
  return count if n[i].nil? || m[i].nil?
  n = n.to_s
  m = m.to_s
  count += 1 if n[i] == m[i]
  return digit_match(n, m, i - 1, count)
end