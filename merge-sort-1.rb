# Challenge

# You are given two sorted arrays. Can you merge the them and return one sorted array? This should be done with only one run through the array.

# Example

# p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])

# # => [1, 2, 3, 4, 6, 8, 9, 11]

def merge_sort(array1, array2)
  # write your code here
  complete_array = array1 + array2
  return complete_array if complete_array.length < 2
  
  switch = true 
  while switch do
    switch = false
    (0...complete_array.length - 1).each do |i|
      if complete_array[i] > complete_array[i + 1]
        complete_array[i], complete_array[i + 1] = complete_array[i + 1], complete_array[i]
        switch = true
      end
    end
  end
  complete_array
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
