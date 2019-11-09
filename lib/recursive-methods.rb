# Authoring recursive algorithms. Add comments including time and space complexity for each method.
# https://github.com/stupendousC/recursion-writing

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if (n == 1) || (n == 0)
    return 1
  elsif n > 1
    return n * factorial(n-1)
  else
    raise ArgumentError, "argument must be >= 0"
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  # accepts a string and returns the reverse of the string by reversing all letters and all words in the string
  # ex: reverse("hello world") will convert the input string to "dlrow olleh"
  
  
  # if s = ""
  #   return
  # else
  #   return reverse(s[0..-1])
  # end
  
  
  
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  #  accepts a string as a parameter and then reverses the string IN PLACE using a recursive algorithm.
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  #   N represents a number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).
  if n == 0
    # base case: no bunnies left
    return 0
  elsif n >= 1
    # recurse
    return 2 + bunny(n-1)
  else
    # no negative bunnies
    raise ArgumentError
  end
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(1), b/c only 1 active stack
def search(array, value)
  # accepts an unsorted array of integers and an integer value to find and then 
  # returns true if the value if found in the unsorted array and false otherwise. 
  if array.empty?
    return false
  end
  if array[0] == value
    return true
  else 
    array.shift
    return search(array, value)
  end
  
end

# Time complexity: O(n)
# Space complexity: O(1), b/c only 1 active stack
def is_palindrome(s)
  if (s.length == 0) || (s.length == 1)
    return true
  elsif s[0] == s[-1]
    return is_palindrome(s[1...-1])
  else
    return false
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  
  if n[-1] && m[-1]
    if n[-1] == m[-1]
      if (n==0) || (m==0)
        return 0
      else
        return 1+ digit_match(n%10, m%10) if n[-2] && m[-2]
      end
    else    
      if (n==0) || (m==0)
        return 0
      else
        return digit_match(n%10, m%10) if n[-2] && m[-2]
      end
    end
  else
    return 0
  end
end


# Added Fun
def fib(n)
  # returns the nth fibonacci number
  # e.g. fib(4) = (0 1 1 2 3) should return 3
  # Try it with a large number (> 100), what do you notice happening?
  
  
end