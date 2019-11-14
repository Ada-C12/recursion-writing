# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  return 1 if n == 0
  raise ArgumentError, "must be a number greater than 0." if n < 0

  return 1 if n == 1
  return n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(1)

def reverse(string, rev = "", first = 0)
  if rev.length == string.length
    return rev
  end
  rev = string[first] + rev
  reverse(string, rev, first + 1)
end

# Time complexity: O(n)
# Space complexity: O(1)

#All the variables that you have to change would go in the parameters.
def reverse_inplace(s, first = 0, last = s.length - 1)
  #This is usually the condition in the loop, reversed. Example while first < last becuase your saying when should I stop not when should i keep going.
  if first >= last
    return s
  end
  #this is the inside of the loop
  temp = s[first]
  s[first] = s[last]
  s[last] = temp

  # this is the bottom of the loop where you say i += 1
  return reverse_inplace(s, first + 1, last - 1)
end

# Time complexity: O(1)
# Space complexity: O(1)

#I want to add n to itself,but I don't now what my base case would be
def bunny(n)
  return ears = (n + n)
  bunny(n)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, first = 0, last = s.length - 1)
  if first >= last  
   return true
  end

  if s[first] == s[last] || s.length % 2 == 1
    return false
  end

  #this is the inside of the loop
  return nested(s, first + 1, last - 1)
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(string, length = 0, letter = 0, hash = {}, results = [])
  if string == ""
    return true
  end

  if string.length == length
    if results.length > 1
      return false
    else
      return true
    end
  end

  hash = {}
  results = []

  if string[letter] == nil
    hash[letter] = 0
  else
    hash[letter] += 1
  end

  if hash[letter] % 2 != 0
    results << hash[letter]
  end
  is_palindrome(string, length + 1, letter + 1, hash, results)
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  raise NotImplementedError, "Method not implemented"
end
