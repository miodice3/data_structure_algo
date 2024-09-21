# when calling quick_sort, the initial values for left and right are typically:
# left = 0, which represents the start of the array
# right = arr.length -1, which represents the last index of the array
#
#
def quick_sort(arr, left, right)
  if left < right
    index = partition(arr, left, right)
    quick_sort(arr, left, index - 1) if left < index - 1 # Sort left half
    quick_sort(arr, index, right) if index < right      # Sort right half
  end
end

def partition(arr, left, right)
  pivot = arr[(left + right) / 2] # Pick pivot point

  while left <= right
    # Move the left index to the right until we find a value greater than the pivot
    left += 1 while arr[left] < pivot

    # Move the right index to the left until we find a value less than the pivot
    right -= 1 while arr[right] > pivot

    # If we find elements that need to be swapped
    if left <= right
      arr[left], arr[right] = arr[right], arr[left] # Swap elements
      left += 1
      right -= 1
    end
  end

  return left # Return the partition index
end
