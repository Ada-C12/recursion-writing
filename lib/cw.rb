def fib(n)
  # returns the nth fibonacci number
  # e.g. fib(4) = (0 1 1 2 3) should return 3
  # Try it with a large number (> 100), what do you notice happening?
  # it got a lot slower as n increases, really noticeable around n=40
  
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    # generate fib seq up to the n-th index place
    return fib(n-1) + fib(n-2)
  end
end


