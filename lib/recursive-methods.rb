# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) where n is the integer given
# Space complexity: O(n) because the number of times the function is called is 'n' times and placed on the stack
def factorial(n)
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
  if s.length == 0 
    return s
  else
    return reverse(s[1..-1]) + s[0]
  end
end

# Time complexity: O(n), where n is the integer 'n'
# Space complexity: O(n), because of the function stack everytime the function is called
def bunny(n)
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

# Time complexity: O(n) where n is the length of number of the least amount of digits
# Space complexity: O(n) because the function is called n-times and each time the function call is added to the stack.
def digit_match(n, m)
  if n < m
    large_num = m.to_s
    small_num = n.to_s
  else
    large_num = n.to_s
    small_num = m.to_s
  end

  def find_matches(large_num,small_num,length,index,count)
    while index < length
      if large_num[-1] == small_num[-1]
        count += 1
        return find_matches(large_num[0..-2],small_num[0..-2],length,index+1,count)
      else
        return find_matches(large_num[0..-2],small_num[0..-2],length,index+1,count)
      end
    end

    return count
  end

  return find_matches(large_num,small_num,small_num.length,0,0)
end