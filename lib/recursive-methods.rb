# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: 0(n)
# Space complexity: 0(n)
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 1 || n == 0
    return n * factorial(n-1)
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def reverse(s)

    return s if s.length < 2
    return reverse(s[1..-1])  + s[0]
    
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    return s if s.length == 0
    return reverse(s[1..-1]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    return 0 if n == 0
    return 2 if n == 1
    return bunny(n - 1) + bunny(1)

end


# Time complexity: ?
# Space complexity: ?
def nested(s)
    # return nested_helper(s[1..-1])
    paren_end = s.index(')')
    return !s.include?('(') if paren_end.nil? 

    paren_start = s[0...paren_end].rindex('(')

    return false if paren_start.nil?

    return nested(s[1..paren_start]+s[paren_end+1..-1])

end

def nested_helper(s)
    return true if s.empty?
    return false if s.length.odd?
    return nested_helper(s)
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    return false if array.nil?
    return true if array[0] == value
    return search(array[1..-1],value)
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    return true if s.empty? || s.length ==1
    return false if s[0] != s[s.length - 1]
    return is_palindrome_helper(s, 1)

end

def is_palindrome_helper(s, index)
    return true if s.empty? || s.length ==1
    return false if s[0] != s[s.length - index]
    is_palindrome_helper(s[1..s.length - index - 1], 1)

end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    
    return 1 if n == 0 && m == 0 
    count = 0
    if n % 10 == m % 10
        count += 1
    end
    if (n / 10 == 0 || m / 10 == 0) 
        return count
    end

    return count + digit_match(n / 10, m / 10)
    
end

def digit_match_helper(n, m)

end