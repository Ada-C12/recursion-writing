# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - the number of times the funcion is called correlates directly to n
# Space complexity: O(n) - n number of funcion calls means n amount of space in the stack taken
def factorial(n)
  raise ArgumentError if n < 0  
  if n == 0
      return 1
  end 
    return n * factorial( n - 1 )
end

# Time complexity: ? O(n/2) which becomes O(n)
# Space complexity: ? O(n) depending on how long the string passed is
def reverse(s, i = 0, j = -1)
  if i == s.length / 2
    return s
  end
  a = s[i]
  b = s[j]

  s[i] = b
  s[j] = a
  i += 1
  j -= 1
  reverse(s, i, j)
end

# Time complexity: ? O(n/2) which becomes O(n)
# Space complexity: ? O(n) depending on how long the string passed is
def reverse_inplace(s, i = 0, j = -1)
  if i == s.length / 2
    return s
  end
  a = s[i]
  b = s[j]

  s[i] = b
  s[j] = a
  i += 1
  j -= 1
  reverse_inplace(s, i, j)
end

# Time complexity: ? O(1)
# Space complexity: ? O(1)
def bunny(n)
    # raise NotImplementedError, "Method not implemented"
    return n + n
end

# # Time complexity: O(n) where n is the length of s
# # Space complexity: O(1) I am not creating a new data structure in memory
def nested(s, i = 0, j = -1)
  if s.length % 2 != 0
    return false
  elsif i == (s.length / 2)
    return true
  elsif !(s[i] == "(" && s[j] == ")") 
    return false
  end

  i += 1
  j -= 1
  nested(s, i, j)
end

# Time complexity: O(n) depends on the length of the array input 
# Space complexity: O(1) no new array created in memory
def search(array, value)
    if array.length == 0
      return false
    end
    last = array.pop
    if last == value
      return true
    end
    search(array, value)
end

# Time complexity: O(n) it depends on the length of the array
# Space complexity: O(1) constant; there isn't any new array in memory
def is_palindrome(s, i = 0, j = -1)
  if i == (s.length / 2)
    return true
  elsif !(s[i] == s[j]) 
    return false
  end

  i += 1
  j -= 1
  is_palindrome(s, i, j)
end

# Time complexity: ?
# Space complexity: ?

# def digit_match(n, m, c = 0, i = 0)
#   # go to an array if not already
  
#   if n.class != Array && m.class != Array
#     n = n.to_s.split("")
#     m = n.to_s.split("")
#   end

#   if n.length == m.length
#   elsif n.length > m.length
#     extra_digits = (n.length) - (m.length)
#     extra_digits.times do 
#       m.insert(0, 0)
#     end
#   elsif n.length < m.length
#     extra_digits = (m.length) - (n.length)
#     extra_digits.times do 
#       n.insert(0, 0)
#     end
#   end

#   if i == n.length
#     return c
#   end

#   if n[i] == m[i]
#     c += 1
#   end

#   i += 1

#   digit_match(n, m, c, i)

# end

# another approach is to think about going backwards 
def digit_match(num1, num2, i = -1, c = 0)

    num1 = num1.to_s
    num2 = num2.to_s


  if num1.length == num2.length
    if i.abs == num2.length + 1
      return c
    end
  elsif num1.length > num2.length
    if i.abs == num2.length + 1
      return c
    end
  elsif num1.length < num2.length
    if i.abs == num2.length + 1
      return c
    end
  end

  if num1[i] == num2[i]
    c += 1
  end

  i -= 1

  digit_match(num1, num2, i, c)
end


