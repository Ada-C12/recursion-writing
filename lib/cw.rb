def reverse_inplace(s)
  #  accepts a string as a parameter and then reverses the string IN PLACE using a recursive algorithm.
  
  # helper method, which will be called as a recursive function
  def swap(s, left_index, right_index)
    temp = s[left_index] 
    s[left_index] = s[right_index]
    s[right_index] = temp
    return s
  end
  
  left_index = 0
  right_index = s.length - 1
  
  while left_index < right_index
    s = swap(s, left_index, right_index)
    left_index += 1
    right_index -= 1
  end
  
  return s
end



s = "super awesome"
p reverse_inplace(s)

