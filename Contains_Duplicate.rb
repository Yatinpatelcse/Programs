# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

def contain_dup (arr)
  if arr.nil?
    fail('Array is Empty')
  end

  hash_table = {}
  (0..arr.length).each do |i|
    if hash_table.include? arr[i]
      return true
    else
      hash_table[arr[i]] = 1
    end
  end
  return false
end

arr = [1,2,3,4,5]
result= contain_dup arr
print result