# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n is the integer given
# Space complexity: O(n) because the number of times the function is called is 'n' times and placed on the stack
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

# Time complexity: O(n) where n is the length of string 's'
# Space complexity: O(n) because the number of times the function reverse is called and placed on the stack
def reverse(s)
  # raise NotImplementedError, "Method not implemented"
  if s.length == 0
    return s
  else
    temp_holding = s[0]
    return reverse(s[1..-1]) + temp_holding
  end
end

# Time complexity: O(n) where n the length of the string 's'
# Space complexity: O(n) because of the number of functions called and placed on the stack regardless if reversed in place.
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

# Time complexity: O(n) where n is the length of array
# Space complexity: O(n) because the function is called n-times and each time it is placed in the stack it is taking up space
def search(array, value)
  # raise NotImplementedError, "Method not implemented"
  def search_value(array,array_length,value,index)
    while index < array_length
      if array[index] == value
        return true
      else
        index += 1
        search_value(array,array_length,value,index)
      end
    end
    return false
  end

  return false if array.length == 0
  return search_value(array,array.length,value,0)
end

# Time complexity: O(n) where n is the length of the string 'n'
# Space complexity: O(n) because the function is called n-times and each time is placed on the stack
def is_palindrome(s)
  # raise NotImplementedError, "Method not implemented"
  def palindrome_find(s,s_length,index)
    while index < s.length
      if s[index] != s[s_length]
        return false
      else
        s_length -= 1
        index += 1
        return palindrome_find(s,s_length,index)
      end
    end

    return true
  end
  return true if s.length == 0
  return palindrome_find(s,s.length-1,0)
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end