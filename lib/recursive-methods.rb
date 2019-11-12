# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  
  if n == 0
    return 1
  elsif n < 0
    raise ArgumentError
  else
    return n * factorial(n-1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(str)
  return str if str.length <= 1
  reversed_str = reverse(str[1..-1]) + str[0]
end

# iterative solution - PLS IGNORE
def iterative_rev(str)
  i = str.length-1
  result = ""
  while i >= 0 do
    result = result + str[i]
    i = i - 1
  end
end

# # Time complexity: O(n)
# # Space complexity: O(n)
def reverse_inplace(str)
  return str if str.length <= 1

  return nested_reverse_inplace(str, 0, str.length-1)
end

def nested_reverse_inplace(str, start, last)
  while start < last do
    start_val = str[start]
    last_val = str[last]

    str[start] = last_val
    str[last] = start_val
    start += 1
    last -= 1
  end
  return str
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return nested_bunny(n, 0)
end

def nested_bunny(n, ears)
  return ears = n * 2
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  if s.empty?
    return true
  end
  return nested_recursive(s, 0, 0)
end

def nested_recursive(s, index, count)
  if s[index] == "("
    count += 1
  else
    count -= 1
  end

  if count < 0
    return false
  end

  if index == s.length-1 and count == 0
    return true
  end

  return nested_recursive(s, index+1, count)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
  return false if array.empty?
  return false if index > array.length
  return true if array[index] == value

  return search(array, value, index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  return true if s.empty?
  reversed_str = s.reverse
  
  if reversed_str == s
    return true
  else
    return false
  end

  return is_palindrome(s)
end

# # Time complexity: O(n)
# # Space complexity: O(n)
# ITERATIVE SOLUTION
def digit_match(num_1, num_2)
  pair_count = 0
  str_1 = num_1.to_s
  str_2 = num_2.to_s

  str1_end = str_1.length - 1 
  str2_end = str_2.length - 1 
  while str1_end >= 0 && str2_end >= 0
    if str_1[str1_end] == str_2[str2_end]
      pair_count += 1
    end
    str1_end -= 1
    str2_end -= 1
  end
  return pair_count
end

# HAD TROUBLE WITH RECURSIVE SOLUTION
# def digit_match(num_1, num_2)
#   return 0 if num_1.nil? || num_2.nil?
#   str_1 = num_1.to_s
#   str_2 = num_2.to_s
#   nested_digit_match(num_1, num_2, str_1, str_2, str_1.length-1, str_2.length-1, 0)
# end

# def nested_digit_match(num_1, num_2, str_1, str_2, str1_end, str2_end, pair_count)
#   while str1_end >= 0 && str2_end >= 0 do
#     if str_1[str1_end] == str_2[str2_end]
#       pair_count += 1
#     end
#   end

#   nested_digit_match(num_1, num_2, str_1, str_2, str1_end-1, str2_end-1)
#   return pair_count
# end

