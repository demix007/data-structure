# Simple Quick Sort
# In the previous challenge, you wrote a 'partition' method to split an array into smaller and greater elements. This means you 'sorted' half the array with respect to the other half. Can you repeatedly use 'partition' to sort an entire array?

# Guideline: In Insertion sort, you simply went through each element in order and inserted it into a sorted sub-array. In this challenge, you cannot focus on one element at a time, but instead must deal with whole sub-arrays. Each time you call partition, you are sorting two parts of the array with respect to each other. Notice if you called partition on two elements, that sub-array would be fully sorted. 

# Can you repeatedly call partition on each sub-array so that the entire array ends up sorted?

# In this challenge, print your array every time you finish your partitioning method, i.e. when you combine the partitioned array together. The first element in a sub-array should be used as a pivot. Partition the left side before partitioning the right side. Do not add the pivot to either side. Instead, put it in the middle when combining the two lists together.

def simple_quicksort(array)
  # write your code here
  return array if array.length < 2
  num_p = array[0]
  left = []
  right = []
  
  array[1..-1].each do |a|
    if a > num_p
      right << a
    else
      left << a 
    end
  end
  
  sort_left = simple_quicksort(left)
  sort_right = simple_quicksort(right)
  res = sort_left + [num_p] + sort_right
  puts res.join(" ")
  res
end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10