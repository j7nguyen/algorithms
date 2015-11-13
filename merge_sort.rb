# Merge sort

def merge_sort(arr)
  if arr.length == 0 || arr.length == 1
    return arr
  else
    split = arr.length / 2
    left, right = arr[0...split], arr[split..-1]
    merge(merge_sort(left), merge_sort(right))
  end
end

def merge(left, right)
  merged = []
  until (left + right).empty?
    left_int, right_int = left.first, right.first
    if left_int.nil?
      merged << right.shift
    elsif right_int.nil?
      merged << left.shift
    else
      merged << (left_int < right_int ? left.shift : right.shift)
    end
  end
  merged
end