# Authoring recursive algorithms. Add comments including time and space complexity for each method.
# https://www.rubyguides.com/2015/08/ruby-recursion-and-memoization/

# Time complexity: O(1)
# Space complexity: O(n)

def factorial(m)
  if m == 0 || m == 1
    return 1 #bc it needs to return 1
  elsif m < 0
    raise ArgumentError, "sorrrry"
end

  return m * factorial(m-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
#number of stacks is what were gaging
# how many times are we visiting each char?
# time complexity isnt in numbers, it depends on input
# how does it scale?
def reverse(s)
  if s.length == 1 #basecase
    return s 
  else
    return reverse(s[1..-1]) + s[0]
end


# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  if count == 0
    return false
  elsif s.even?
    s.reverse + s(count -1)
  else
    s + s(count - 1)
  end
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  raise NotImplementedError, "Method not implemented"
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