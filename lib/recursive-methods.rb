# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) because the function will be called n times. 
# Space complexity: O(n) because there will be n number of function calls placed on the system call stack. 
def factorial(n)
  raise ArgumentError if n < 0 

  return 1 if n == 1 || n == 0
  return n * factorial(n - 1)
end

# Time complexity: O(1/2n) where n is the input string because the function will be called the length of half the input string times. O(1/2n) is reduced to O(n).
# Space complexity: O(1/2n) because there will be 1/2 n number of function calls placed on the sytem call stack. O(1/2n) is reduced to O(n).
def reverse(s, low = 0 , high = (s.length-1))
  if low < high
    temp_low = s[low]
    temp_high = s[high]

    s[low] = temp_high
    s[high] = temp_low

    return reverse(s, low + 1, high - 1)
  else
    return s
  end
end

# Time complexity: O(1/2n) where n is the input string because the function will be called the length of half the input string times. O(1/2n) is reduced to O(n).
# Space complexity: O(1/2n) because there will be 1/2 n number of function calls placed on the sytem call stack. O(1/2n) is reduced to O(n).
def reverse_inplace(s, low = 0 , high = ( s.length - 1 ))
  if low < high
    temp_low = s[low]
    temp_high = s[high]

    s[low] = temp_high
    s[high] = temp_low

    return reverse_inplace(s, low + 1, high - 1)
  else
    return s
  end
end

# Time complexity: O(n) because the function will be called n times. 
# Space complexity: O(n) because there will be n number of function calls placed on the system call stack. 
def bunny(n)
    return 0 if n == 0
    return 2 if n == 1
    return 2 + bunny(n - 1)
end

# Time complexity: O(1/2n) where n is the input string because the function will be called the length of half the input string times. O(1/2n) is reduced to O(n).
# Space complexity: O(1/2n) because there will be 1/2 n number of function calls placed on the sytem call stack. O(1/2n) is reduced to O(n).
def nested(s, low = 0, high = (s.length - 1))
  return false if s.length.odd?

  if low < high
    unless s[low] == "(" && s[high] == ")"
      return false
    end

    return nested(s, low + 1, high - 1)
  else
    return true
  end
end

# Time complexity: O(n) because the function will be called n times where n is the length of the array. 
# Space complexity: O(n) because there will be n number of function calls placed on the system call stack. 
def search(array, value, index = 0)
  if index < array.length
    return true if array[index] == value
    
    return search(array, value, index + 1)
  else
    return false
  end
end

# Time complexity: O(1/2n) where n is the input string because the function will be called the length of half the input string times. O(1/2n) is reduced to O(n).
# Space complexity: O(1/2n) because there will be 1/2 n number of function calls placed on the sytem call stack. O(1/2n) is reduced to O(n).
def is_palindrome(s, low = 0, high = (s.length - 1))
  if low < high
    unless s[low] == s[high]
      return false
    end

    return is_palindrome(s, low + 1, high - 1)
  else
    return true
  end
end

# Time complexity: O(log n) because the function will be called log n times where n is the number of digits in the shorter number.
# Space complexity: O(log n) because there will be log n number of function calls placed on the system call stack where n is the number of digits in the shorter number.
def digit_match(n, m, place = 10, match_counter = 0)
  if n == m && n == 0
    return 1
  end

  if n < 1 || m < 1
    return match_counter
  else
    n_remainder = n % place
    m_remainder = m % place
    
    if n_remainder == m_remainder
      match_counter += 1
    end
    return digit_match(n - n_remainder, m - m_remainder, place * 10, match_counter, )
  end
end
