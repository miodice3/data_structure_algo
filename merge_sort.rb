def mergesort(array)
  puts "method: #{__method__} - start, array: #{array}"
  helper = Array.new(array.length)
  mergesort_recursive(array, helper, 0, array.length - 1)
  puts "method: #{__method__} - end"
end

def mergesort_recursive(array, helper, low, high)
  puts "method: #{__method__} - start inputs: array: #{array}, helper: #{helper}, low: #{low}, high: #{high}"
  if low < high
    middle = low + (high - low) / 2
    puts "merge sort on left <<<<"
    mergesort_recursive(array, helper, low, middle)       # Sort left half
    puts "merge sort on right >>>>"
    mergesort_recursive(array, helper, middle + 1, high)  # Sort right half
    puts "merging = = ="
    puts "merging w/ inputs: array: #{array}, helper: #{helper}, low: #{low}, middle: #{middle}, high: #{high}"
    puts "merging = = ="
    merge(array, helper,low, middle, high)               # Merge them
  else
    puts "method: #{__method__}: else case, passing!!"
  end
end

def merge(array, helper, low, middle, high)
  puts "method: #{__method__} - start inputs: array= #{array}; helper= #{helper}; low= #{low}; middle= #{middle}; high= #{high}"
  # Copy both halves into a helper array
  (low..high).each do |i|
    helper[i] = array[i]
  end

  helper_left = low
  helper_right = middle + 1
  current = low

  # Iterate through helper array, comparing left and right halves
  while helper_left <= middle && helper_right <= high
    puts "- - ->> within while block"
    puts "helper_left: #{helper_left}, middle: #{middle}, helper_right: #{helper_right}, high: #{high}, helper: #{helper}, array: #{array}"
    if helper[helper_left] <= helper[helper_right]
      puts "logic: A"
      array[current] = helper[helper_left]
      helper_left += 1
    else
      puts "Logic: B"
      array[current] = helper[helper_right]
      helper_right += 1
    end
    current += 1
  end

  # Copy the rest of the left side of the array into the target array
  remaining = middle - helper_left
  (0..remaining).each do |i|
    array[current + i] = helper[helper_left + i]
  end
  puts "method: #{__method__} - end, array: #{array}"
end

mergesort([4, 3, 2, 1, 0])
