# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: also O(n), where a new method is stored n times in the call stack
def factorial(n)
  if n < 0
    raise ArgumentError
  end
  if n <= 1
    return 1
  else
    n * factorial(n - 1)
  end
end

# Time complexity: The method is called n/2 times, and removing the constant we get O(n)
# Space complexity: Since the method creates a new array every time it is called and stores a method in the call stack, it takes up 2n memory, but removing the constant makes the space complexity O(n)
def reverse(s)
  if s.length > 1
    first_char = s[0]
    last_char = s[-1]
    s = reverse(s.delete_prefix(s[0]).delete_suffix(s[-1]))
    return last_char + s + first_char
  else
    return s
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s, index = 1)
  if index <= s.length/2
    first_char = s[index-1]
    last_char = s[-index]
    s[index-1] = last_char
    s[-index] = first_char
    return reverse_inplace(s, index += 1)
  else
    return s
  end
end

# Time complexity: O(n)
# Space complexity: O(n), even though the method is storing a new "ears" value every time it is called
def bunny(n, ears = 0)
  if ears == n + n
    return ears
  else
    ears += 2
    return bunny(n, ears)
  end
end

# Time complexity: The method will be called n/2 (or n/2 + 1) times, but since we remove the constant it's O(n)
# Space complexity: O(n) (same reasoning as above)
def nested(s, i = 1)
  if s.length % 2 != 0
    return false
  end
  if i > s.length / 2 || s.length == 0
    return true
  elsif s[i-1] == "(" && s[-i] == ")"
    return nested(s, i += 1)
  else
    return false
  end
end

# Time complexity: O(n), where n is the array length
# Space complexity: O(n), where n is the array length
def search(array, value, i = 0)
  if array[i] == value 
    return true
  elsif i > array.length
    return false
  else
    return search(array, value, i += 1)
  end
end

# Time complexity: O(n), similar to the nested method
# Space complexity: O(n), same
def is_palindrome(s, i = 1)
    if s[i-1] == s[-i] && i <= s.length/2
      is_palindrome(s, i += 1)
    elsif i > s.length/2
      return true
    else
      return false
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, i = 0, result = 0)
  dec = 10**i
  if n == 0 && m == 0
    return 1
  end
  if n - dec >= 0 && m - dec >= 0
    if n/dec % 10 == m/dec % 10
      result += 1
    end
    digit_match(n, m, i += 1, result)
  else 
    return result
  end
end