def digit_match(n, m)
  # puts "digit_matching #{n} vs #{m}"
  # puts "comparing #{n%10} vs #{m%10}"
  
  if n>9 && m>9
    # recurse-able condition
    if n%10 == m%10
      return 1 + digit_match(n/10,m/10)
    else
      return 0 + digit_match(n/10, m/10)
    end
    
  else
    # no need to recurse, n and/or m already on single digits
    if n%10 == m%10
      return 1
    else
      return 0
    end
  end
  
end

n = 54321
m = 12345
p digit_match(n,m)