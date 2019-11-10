# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n < 0
    raise ArgumentError.new("Must be a positive integer.")
  elsif n == 0 
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  if s.length == 0
    return s
  end
  
  i = (s.length - 1)
  
  if i == 0
    return s
  else
    return s[i] + reverse(s[0..-2])
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s, low = 0, high = s.length - 1)
  
  if low >= high
    return s
  else
    temp = s[high]
    s[high] = s[low]
    s[low] = temp
  end
  
  reverse_inplace(s, low +=1, high -= 1)
end


# Time complexity: ?
# Space complexity: ?
def bunny(n)
  if n < 0
    raise ArgumentError.new("You can't have a negative number of bunnies, silly.")
  elsif n == 0
    return 0
  elsif n == 1
    return 2
  else 2 + bunny(n - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def nested(s, low = 0, high = s.length - 1)
  status = true
  
  if s.length % 2 != 0
    return false
  elsif low >= high
    return status
  elsif s[low] != s[high]
    status = true
    nested(s, low += 1, high -= 1)
  else
    return false
  end
  
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  if array.length == 0
    return false
  end
  
  if array.first == value
    return true
  else
    search(array[1..-1], value)
  end
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  if s.length <= 2 && s[0] == s[-1]
    return true
  elsif s[0] != s[-1]
    return false
  else
    is_palindrome(s[1..-2])
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  n = n.to_s
  m = m.to_s
  
  if n.length == 0 || m.length == 0
    return 0
  elsif n[-1] == m[-1]
    1 + digit_match(n[0..-2], m[0..-2])
  else
    digit_match(n[0..-2], m[0..-2])
  end
end
