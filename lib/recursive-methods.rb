# # # # # Authoring recursive algorithms. Add comments including time and space complexity for each method.

# # # # # Time complexity: O(n)
# # # # # Space complexity: O(n)
def factorial(n)

  raise ArgumentError unless n >= 0 
  return 1 if n == 1 || n == 0

  n * factorial(n - 1)

end


# # # # Time complexity: O(n)
# # # # Space complexity: O(n) maybe less?
def reverse(s)

  return s if s.length <= 1
  reversed = reverse(s[1..-1])
  reversed << s[0]

end


# # # # # Time complexity: O(n)
# # # # # Space complexity: O(n)
def reverse_inplace(s, pointer = 0)
  
    return s if pointer == s.length / 2
    s[pointer], s[- 1 - pointer] = s[- 1 - pointer ], s[pointer]

    reverse_inplace(s, pointer + 1)
  
end


# # # # Time complexity: O(n)
# # # # Space complexity: O(n)
def bunny(n)

    return 0 if n == 0
    return 2 if n == 1
    bunny(n - 1) + 2

end


# # # Time complexity: O(n) 
# # # Space complexity: O(n)

def nested(s, i = 0, j = s.length - 1)

    return false if s.length.odd? 
    return false if s[i] == "(" && s[j] != ")" || (s[i] == ")" && i < j)
    return true if i > j || s.empty?
    

    nested(s, i + 1, j - 1)

end


# # # # Time complexity: O(n)
# # # # Space complexity: O(n)
def search(array, value, i = 0)

    return true if array[i] == value
    return false if i == array.length
    search(array, value, i + 1)

end


# # # # # Time complexity: O(n)
# # # # # Space complexity: O(n)

def is_palindrome(s, i = 0, j = -1)
   
    return false if s[i] != s[j]
    return true if i > s.length - 1
    
    is_palindrome(s, i + 1, j - 1)

end

# # # Time complexity: O(n)
# # # Space complexity: O(n)
def digit_match(n, m, matches = 0)

    dig1 = n % 10
    dig2 = m % 10
    
    return matches if n == 0 || m == 0
    matches += 1 if dig1 == dig2 
    
    n = n / 10
    m = m / 10
    digit_match(n, m, matches)
      
end
