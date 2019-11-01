# Challenge
# Given a list of numbers, can you find all the pairs of numbers whose sum equals k?

# Input

# The provided function takes 2 parameters: an array array, and the special number k. 

# Output

# Return an Array with the pairs of numbers. Print each pair with the first number followed by the second, and print all the pairs in the order that the second number appears in the list.

def find_pairs(array, k)
  # write your code here
  res = []
  array.each_with_index do |a, index| #get all elements
    array[(index + 1)..-1].each do |b| #index + 1 to not get the same elements
      if a + b == k
        res.push([a,b])
      end
    end
  end
  res
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]


