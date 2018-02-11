# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

def contains_duplicate(nums)
  hash_table = {}
  (0..nums.length).each do |i|
    if hash_table.include? nums[i]
      return true
    else
      hash_table[nums[i]] = 1
    end
  end
  return false
end