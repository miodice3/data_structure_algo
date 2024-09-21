# iterative, CTCI p 149
#
def binary_search(arr, x)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = low + (high - low) / 2

    if arr[mid] < x
      low = mid + 1
    elsif arr[mid] > x
      high = mid - 1
    else
      return mid # Found the element
    end
  end

  return -1 # Element not found
end

# recursive, CTCI p 149
#
def binary_search_recursive(arr, x, low, high)
  return -1 if low > high # Error case, element not found

  mid = low + (high - low) / 2

  if arr[mid] < x
    return binary_search_recursive(arr, x, mid + 1, high)
  elsif arr[mid] > x
    return binary_search_recursive(arr, x, low, mid - 1)
  else
    return mid # Found the element
  end
end
