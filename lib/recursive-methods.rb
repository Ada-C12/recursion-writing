# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError.new("negative input error") if n < 0  
  return 1 if n < 2
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s, reverse = "", last = s.length - 1)
  return reverse if last < 0 
  return reverse(s, reverse += s[last], last -= 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, first = 0, last = s.length - 1)  
  return s if first >= last
  
  top = s[first]
  s[first] = s[last]
  s[last] = top
  return reverse_inplace(s, first += 1, last -= 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n < 1
  return 2 if n < 2
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)

def nested(s, i = 0, count = 0)
  return true if s.empty?    
  return false if s.length.odd?

  if i > s.length - 1
    return true if count == 0
    return false
  end

  return nested(s, i += 1, count += 1) if s[i] == "("  
  return nested(s, i += 1, count -= 1) if s[i] == ")"
end


# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, i = 0)
  return false if i > array.length - 1
  return true if array[i] == value
  return search(array, value, i += 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, i = 0, j = s.length - 1)
  return true if i >= j  
  return false if s[i] != s[j]
  return is_palindrome(s, i += 1, j -= 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, i = n.to_s.length - 1, j = m.to_s.length - 1, total = 0)
  return total if i < 0 || j < 0
  total += 1 if n.to_s[i] == m.to_s[j]
  return digit_match(n, m, i -= 1, j -= 1, total)
end

# Time complexity: O(n)
# Space complexity: O(n)
def fib(n)
  return 0 if n < 0
  return n if n < 2
  return fib(n-1) + fib(n-2)
end

