# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def factorial(n)
  if n < 0 
    raise ArgumentError
  elsif n <= 1 
    return 1 
  else
    return n * factorial(n - 1)
  end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  reversed_string = ""
  if s.length >= 1 
    reversed_string = reverse(s[1..-1])
    reversed_string += s[0]
  else 
    return reversed_string
  end
end 

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s, i = 0, j = -1)
  n = s.length 
  if i == n / 2 
    return s 
  else 
    letter = s[i]
    s[i] = s[j]
    s[j] = letter 
    reverse_inplace(s, i + 1, j - 1)
  end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n, ears = 0)
  if ears == n + n 
    return ears
  else
    ears += n
    bunny(n, ears)
  end 
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, low = 0, high = (s.length - 1))
  if s.length.odd?
    return false 
  elsif low < high 
    if s[low] != "(" && s[high] != ")"
      return false 
    end 
    return nested(s, low + 1, high - 1)
  else 
    return true 
  end 
end

# Time complexity: O(n)
# Space complexity: ?
def search(array, value)
  new_array_minus_one = 0..-2

  if array.empty?  
    return false 
  elsif array[-1] == value
    return true 
  else 
    search(array[new_array_minus_one], value)
  end 
end 

# Time complexity: O(n)
# Space complexity: O(1) 
def is_palindrome(s, i = 0, j = -1)
  n = s.length 

  if i >= s.length + j
    return true
  elsif
    s[i] != s[j]
    return false
  elsif s[i] == s[j]
    is_palindrome(s, i + 1, j - 1)
  end 
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)

end