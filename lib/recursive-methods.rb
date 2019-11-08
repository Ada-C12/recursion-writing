# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n is the value of n
# Space complexity: O(n) where n is the value of n
def factorial(n)
  if n < 0
    raise ArgumentError
  elsif n <= 1
    return 1
  else 
    return n * factorial(n-1)
  end
end

# Time complexity: O(n) where n is the length of s
# Space complexity: O(n) where n is the length of s
def reverse(s)
  if s.length <= 1
    return s 
  else 
    return s[s.length - 1] + reverse(s[0..-2])
  end
end

# Time complexity: O(n) where n is the length of s
# Space complexity: O(n) where n is the length of s
def reverse_inplace(s)
  if s.length <= 1
    return s 
  else 
    return s[s.length - 1] + reverse(s[0..-2])
  end
end

# Time complexity: O(n) where n is value of n
# Space complexity: O(n) where n is value of n
def bunny(n)
  if n < 1
    return 0
  else 
    return 2 + bunny(n-1)
  end
end

# Time complexity: O(n) where n is the length of s
# Space complexity: O(n) where n is the length of s
def nested(s)
  if s.length == 0
    return true
  else 
    if s[0] == "(" && s[-1] == ")"
      return nested(s[1..-2])
    else
      return false
    end
  end
end

# Time complexity: O(n) where n is the length of array
# Space complexity: O(n) where n is the length of array
def search(array, value)
  if array.empty?
    return false
  else
    if array[0] == value
      return true
    else
      array.shift
      return search(array, value)
    end
  end
end

# Time complexity: O(n) where n is the length of s
# Space complexity: O(n) where n is the length of s
def is_palindrome(s)
  if s.length == 0
    return true
  else 
    if s[0] == s[-1]
      return is_palindrome(s[1..-2])
    else
      return false
    end
  end
end

# Time complexity: O(n) where n is the length of the smaller integer
# Space complexity: O(n) where n is the length of the smaller integer
def digit_match(n, m, match = 0)
  if n.digits.count == 1 || m.digits.count == 1
    if n % 10 == m % 10
      return match +=1
    else
      return match
    end
  else
    if n % 10 == m % 10
      match += 1
    end
    n = n / 10
    m = m / 10
    return digit_match(n, m, match)
  end
end