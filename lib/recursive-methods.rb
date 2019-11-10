# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
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

# Time complexity: ?
# Space complexity: ?
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

# Time complexity: ?
# Space complexity: ?
def bunny(n, ears = 0)
  if ears == n + n
    return ears
  else
    ears += 2
    return bunny(n, ears)
  end
end

# Time complexity: ?
# Space complexity: ?
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

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end