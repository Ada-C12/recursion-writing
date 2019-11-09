def nested(s)
  puts "\n TESTING ON #{s}"

  # read from front until ( is found, return false if ) instead
  i = 0
  left_paren_found = false
  while s[i] && left_paren_found==false
    if s[i] == ")"
      puts "HELL NO"
      return false
    elsif s[i] != "("
      i += 1
    else  
      puts "\tfound ( at index #{i}"
      left_paren_found = true
    end
  end
  
  # read from back until ) is found, return false if ( instead
  j = s.length-1
  right_paren_found = false
  while s[j] && right_paren_found==false
    if s[j] == "("
      puts "BUSTED"
      return false
    elsif s[j] != ")"
      j -= 1
    else  
      puts "\tfound ) at index #{j}"
      right_paren_found = true
    end
  end
  
  if (right_paren_found && left_paren_found) && (i < j)
    puts "recursion..."
    return nested(s[i+1...j])
  elsif !right_paren_found && !left_paren_found
    return true
  else
    return false
  end
end

s = "ab(c)d"
p nested(s)