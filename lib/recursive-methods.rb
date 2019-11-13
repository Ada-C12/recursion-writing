# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)

# factorial(n) Write a method factorial that accepts an integer
# parameter n and that uses recursion to compute and return the
# value of n factorial (also known as n!).

#     e.g. fact(4) = 4 * 3 * 2 * 1 = 24

def factorial(n)
  if (n < 0)
    raise ArgumentError
  elsif n == 1 || n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)

# reverse(s) Write a method reverse that accepts a string as a
# parameter and then returns the reverse of the string by
# reversing all letters and all words in the string.

# e.g. reverse("hello world") will return "dlrow olleh"
def reverse(s)
  if (s != "")
    return s[-1] + reverse(s[0...-1])
  else
    return ""
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return reverse_inplace_internal(s, 0, s.length - 1)
end

def reverse_inplace_internal(s, start_i, end_i)
  if (start_i >= end_i)
    return s
  else
    temp = s[start_i]
    s[start_i] = s[end_i]
    s[end_i] = temp

    start_i += 1
    end_i -= 1

    return reverse_inplace_internal(s, start_i, end_i)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n <= 0
    return 0
  elsif n == 1
    return 2
  else
    return 2 + bunny(n - 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  if s == ""
    return true
  elsif s.length == 1
    return false
  else
    outside_nested = s[0] == "(" && s[-1] == ")"
    return outside_nested && nested(s[1...-1])
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
  if array.count() == 0
    return false
  else
    return array.pop() == value || search(array, value)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  if s == ""
    return true
  elsif s.length == 1
    return true
  else
    return s[0] == s[-1] && is_palindrome(s[1...-1])
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
  if n == 0 && m == 0
    return 1
  elsif n == 0 && m > 0 || m == 0 && n > 0
    return 0
  elsif n % 10 == m % 10
    return 1 + digit_match(n / 10, m / 10)
  elsif n / 10 > 0 || m / 10 > 0
    return digit_match(n / 10, m / 10)
  else
    return 0
  end
end
