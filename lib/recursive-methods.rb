# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(1)
def factorial(n)
  if n == 0 || n == 1
    return 1
  elsif n < 0
    raise ArgumentError
  end
  
  until n == 1 do
    return n * factorial(n-1)
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse(s)
  if s.length <= 1
    return s
  end
  
  reversed_str = reverse(s[1..-1])
  reversed_str += s[0]
  reversed_str
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s)
  if s.length <= 1
    return s
  end
  
  return s[s.length-1] + reverse_inplace(s[0, s.length-1])
end

# Time complexity: O(n)
# Space complexity: O(1)
def bunny(n)
  if n == 0
    return 0
  elsif n == 1
    return 2
  else
    return 2 + bunny(n - 1)
  end
  
  return
end

# Time complexity: O(n)
# Space complexity: O(1)
def nested(s)
  if s.length.odd?
    return false
  elsif
    s.length == 0
    return true
  end
  if s[0] != s[-1]
    return nested(s[1..-2])
  else
    return false
  end
end

# Time complexity: O(n)
# Space complexity: O(1)

def search(array,value)
  if array == []
    return false
  elsif array[0] == value
    return true
  else
    array.delete_at(0)
    return search(array, value)
  end
end

# Time complexity: O(n)
# Space complexity: O(1)
def is_palindrome(s)
  if s.length == 0 || s.length == 1
    return true
  elsif s[0] == s[-1]
    return is_palindrome(s[1..-2])
  else
    return false
  end
end



# Time complexity: O(n + m)
# Space complexity: O(1)

def digit_match(n, m, c = 0)
  if n.class != String || m.class != String
    n = n.to_s
    m = m.to_s
  end
  
  checker = c
  
  until n.length == 0 || m.length == 0
    # binding.pry
    if n[-1] == m[-1]
      return digit_match(n.chop!, m.chop!, checker + 1)
    else
      return digit_match(n.chop!, m.chop!, checker)
    end
  end    
  return checker
end