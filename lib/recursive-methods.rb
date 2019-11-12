# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n < 0
    raise ArgumentError
  end
  return 1 if n == 1 || n == 0
  return n * factorial(n-1)
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def reverse(s, i = 0, j = -1, n_s = "")
  if i == s.length
  else
    n_s << s[j]
    reverse(s, i + 1, j -1, n_s)
  end
  return n_s
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def reverse_inplace(s, i = 0, j = -1)
  if i == s.length/2
  else
    temp = s[i]
    s[i] = s[j]
    s[j] = temp
    reverse_inplace(s, i + 1, j - 1)
  end
  return s
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n, i = 0, j = 0)
  if n == i
    return j
  else
    return bunny(n, i + 1, j + 2)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, i = 0, ope = 0, close = 0)
  return false if s.length % 2 != 0
  if i < s.length
    if s[i] == "("
      ope += 1
    else
      if i >= 1
        close += 1
      else
        return false
      end
    end
    return nested(s, i + 1, ope, close)
  end
  return ope == close
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, i = 0)
  return false if array.length == 0
  if array[i] == value
    return true
  end
  if i < array.length
    return search(array, value, i + 1)
  else
    return false
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, i = 0, j = -1, coun = 1)
  return true if s == ""
  if i < s.length / 2
    if s[i] == s[j]
      return is_palindrome(s, i + 1, j - 1, coun + 1)
    else
      return false
    end
  end
  return coun % 2 == 0
end

# Time complexity:  O(n)
# Space complexity: O(n)
def digit_match(n, m, i = 0, coun = 0)
  if (n.class != Array) && (m.class != Array)
    n = n.digits
    m = m.digits
  end
  if i < n.length
    if n[i] == m[i]
      return digit_match(n, m, i + 1, coun + 1)
    else 
      return digit_match(n, m, i + 1, coun)
    end
  else
    return coun
  end
end