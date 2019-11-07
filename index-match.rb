# Index Match
# Given a sorted array of integers with no duplicates, find the spot where array[i] == i.
# It's super-easy to find a solution in O(n) time, but can you code an O(log n) solution?

# Challenge
# Return the index where they match, or -1 if there is none.

# Example

# puts index_match([0, 2, 3, 7, 9, 11])

# # => 0

def index_match(array)
  # write your code here
  array.each_with_index do |num, index|
    if num == index 
      return num
    end
  end
  -1
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0