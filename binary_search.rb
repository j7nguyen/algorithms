# This recursive binary search function takes an array of sorted integers, a 
# target value, a start index, and an end index.
#
def binary_search_rec(arr, val, from=0, to=nil)
  # Sets the end index to the last of the input array.
  #
  to = arr.length - 1 if to == nil
  
  return "Value not found" if from > to
  
  # Find the midpoint between from and to.
  #
  mid = (from + to) / 2
  
  # If our target value is less than the value at the midpoint, redo the search
  # in the left half of the array. If it's greater, search the right half. If
  # it's our target value, return the midpoint, which is the target value's
  # index.
  #
  if val < arr[mid]
    return binary_search_rec(arr, val, from, mid - 1)
  elsif arr[mid] < val
    return binary_search_rec(arr, val, mid + 1, to)
  else
    return mid
  end
end

# Iterative binary search that takes a sorted array and target value as inputs
#
def binary_search_iter(arr, val)

  # Set minimum and maximum indices to search between
  #
  min, max = 0, arr.length - 1

  # Run a loop until you find the value or can determine it's not in the array
  #
  loop do
    if max < min
      return "Value not found"
    end

    # Find midpoint and check the array's value at that index against the 
    # target value. If the target is less, search the left half. If the target 
    # is greater, search the right half. If the value at the midpoint is the 
    # target value, return the midpoint.
    #
    mid = (min + max) / 2
    if arr[mid] == val
      return mid
    elsif val < arr[mid]
      max = mid - 1
    elsif arr[mid] < val
      min = mid + 1
    end
  end

end

# a = [1,2,3,4,5,6,7,8,10,20,205]
#
# puts binary_search_iter(a, 20511)
# puts binary_search_rec(a, 5, 0, 10)