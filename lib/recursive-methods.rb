# Time complexity: O(n) because it makes as many calls as the number is large
# Space complexity: O(n) because the stack holds as many calls as the number is large
def factorial(n)
  return 1 if n == 1 || n == 0
  raise ArgumentError if n < 0
  return n * factorial(n-1)
end

# Time complexity: O(n), 'n' being the length of the string
# Space complexity: O(n) because the stack holds as many calls as the string is long
def reverse(s)
  return s if s.length <=1
  return s[-1] + reverse(s[0..-2])
end

# Time complexity: O(n); it's actually 1/2 n because the method is called half the times of the length of the string, but the constant falls away
# Space complexity: O(n); same as above, 1/2 n that becomes n
def reverse_inplace(s)
  return s if s.length <=1
  return s[-1] + reverse_inplace(s[1..-2]) + s[0]
end

# Time complexity: O(n); recurses same number of times as bunnies
# Space complexity: O(n); number of calls on stack same as number of bunnies
def bunny(n)
  return 0 if n == 0
  return 2 + bunny(n-1)
end

# Time complexity: O(n) but it's actually less because many ways to return before recursing through all 1/2 n times
# Space complexity: O(n) but in actuality less for reasons given above
def nested(s)
  return true if s == ""
  return false if s.length % 2 == 1
  return false if s[0] != "(" || s[-1] != ")"
  return nested(s[1..-2])
end

# Time complexity: O(n); one pass through array, so time depends on length of array
# Space complexity: O(n); worst case you go through the whole array without finding the value, so the stack contains a call for each element of the array
def search(array, value)
  return false if array == []
  return true if array[0] == value
  return search(array[1..-1], value)
end

# Time complexity: O(n), which is really 1/2n because each call you shorten the parameter string by two characters
# Space complexity: O(n), though it's really 1/2n, as above
def is_palindrome(s)
  return true if s == ""
  return false if s[0] != s[-1]
  return is_palindrome(s[1..-2])
end

# Time complexity: O(n); this takes as long as the shorter number has digits
# Space complexity: O(n); you make as many calls as the shorter number has digits
def digit_match(n, m)
  if n < 10 || m < 10
    if n == m % 10 || m == n % 10
      return 1
    else
      return 0
    end
  end
  return 0 if (n < 1) || (m < 1)
  if n % 10 == m % 10
    return 1 + digit_match((n / 10), (m / 10))
  else
    return 0 + digit_match((n / 10), (m / 10))
  end
end

# fib(100+) gives a stack overflow error--it's just too much!
# Time complexity: O(n); for each call you make two calls, but the 2 falls away.
# Space complexity: this one is bad! O(2^n) because for each call it makes two recursive calls
def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  return fib(n-1) + fib(n-2)
end
