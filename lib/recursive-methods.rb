# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) 
# Space complexity: O(n) 
def factorial(n)
  raise ArgumentError.new if n < 0 
  return 1 if n == 1 || n == 0  
  return n * factorial(n-1)
end

# Time complexity: O(n) 
# Space complexity: O(n)  
def reverse(s)
  return s if s.length <= 1
  reversed_s = reverse(s[1..-1])
  reversed_s += s[0]
  return reversed_s
end

# Time complexity: O(n) 
# Space complexity: O(n)
def reverse_inplace(s)
  return s if s.length <= 1

  s = s.split('')
  first = s[0]
  last = s[s.length-1]
  s.shift
  s.pop

  s = reverse_inplace(s.join(''))
  s = s.split('')
  s.unshift(last)
  s.push(first)
  return s.join('')
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0 
  return 2 if n == 1
  return bunny(n-1) + 2
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return true if s.empty?
  return false if s.length.odd?
  if s[0] != '(' || s[-1] != ')'
    return false 
  else 
    return nested(s[1..-2])
  end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
  return false if array.empty?
  return true if value == array.first
  return search(array[1..-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  return true if s.empty?

  if s[0] == s[-1]
    return is_palindrome(s[1..-2]) 
  else 
    return false
  end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, i = -1, count=0)
  return count if n[i].nil? || m[i].nil?
  n = n.to_s
  m = m.to_s
  count += 1 if n[i] == m[i]
  return digit_match(n, m, i - 1, count)
end