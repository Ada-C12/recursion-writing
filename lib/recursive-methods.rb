# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  # raise NotImplementedError, "Method not implemented"
  if n < 0
    raise ArgumentError
  elsif n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  # raise NotImplementedError, "Method not implemented"
  if s.length == 0
    return s
  else
    temp_holding = s[0]
    return reverse(s[1..-1]) + temp_holding
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  # raise NotImplementedError, "Method not implemented"
  if s.length == 0 
    return s
  else
    return reverse(s[1..-1]) + s[0]
  end
end

# Time complexity: O(n), where n is the integer 'n'
# Space complexity: O(n), because of the function stack everytime the function is called
def bunny(n)
  # raise NotImplementedError, "Method not implemented"
  if n <= 0
    return 0
  elsif n == 1
    return 2
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: O(n) where n is the length of the string 's'
# Space complexity: O(n) because of the function stack every time the function is called
def nested(s)
  # raise NotImplementedError, "Method not implemented"

  def nested_search(s,index,length)
    while index < length
      if s[index] == "(" && s[length] == ")"
        index += 1
        length -= 1
        nested_search(s,index,length)
      else
        return false
      end
    end
    return true
  end

  return true if s.length == 0
  return false if s.length % 2 == 1

  return nested_search(s,0,s.length-1)
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end