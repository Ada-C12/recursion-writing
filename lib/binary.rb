def binary_search(array, to_find)
  high = array.length - 1
  low = 0
  while high >= low
    mid = (high + low) / 2
    if array[mid] == to_find
      return mid
    elsif array[mid] > to_find
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return nil
end

def recursive_binary_search(array, to_find, low = 0, high = array.length - 1)
  mid = (high + low) / 2
  return nil if low > high
  return array[mid] if array[mid] == to_find
  if to_find < array[mid]
    return recursive_binary_search(array, to_find, low, mid - 1)
  else
    return recursive_binary_search(array, to_find, mid + 1, high)
  end
end

class List
  attr_reader :head, :tail

  def initialize(head, tail)
    @head = head
    @tail = tail
  end

  def self.from_array(array)
    
  end

  def search(list = self)

  end


end