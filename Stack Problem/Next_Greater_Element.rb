# Next Greater Element
#
# You are given two arrays (without duplicates) nums1 and nums2 where nums1’s elements are subset of nums2. Find all the next greater numbers for nums1's elements in the corresponding places of nums2.
#
# The Next Greater Number of a number x in nums1 is the first greater number to its right in nums2. If it does not exist, output -1 for this number.
#
# Example 1:
# Input: nums1 = [4,1,2], nums2 = [1,3,4,2].
# Output: [-1,3,-1]
# Explanation:
#     For number 4 in the first array, you cannot find the next greater number for it in the second array, so output -1.
#     For number 1 in the first array, the next greater number for it in the second array is 3.
#     For number 2 in the first array, there is no next greater number for it in the second array, so output -1.
# Example 2:
# Input: nums1 = [2,4], nums2 = [1,2,3,4].
# Output: [3,-1]
# Explanation:
#     For number 2 in the first array, the next greater number for it in the second array is 3.
#     For number 4 in the first array, there is no next greater number for it in the second array, so output -1.
# Note:
# All elements in nums1 and nums2 are unique.
# The length of both nums1 and nums2 would not exceed 1000.
#


def next_greater_element(find_nums, nums)
  if !find_nums.uniq! == nil || !nums.uniq! == nil
    fail('Array is not unique')
  end

  if find_nums.size - 1 > 1000 || nums.size - 1 > 1000
    fail('Array size exceed the limit of 1000')
  end
  result = []
  stack = []
  hash_map = {}
  for i in 0..nums.size-1
    num = nums[i]
    while !stack.empty? && stack.last < num
      hash_map[stack.pop]= num
    end
    stack.push(num)
  end

  for i in 0..find_nums.size-1
    if hash_map.include? find_nums[i]
      result.push hash_map[find_nums[i]]
    else
      result.push -1
    end
  end
  print "Stack : #{stack}\n"
  print "Hash Map: #{hash_map}\n"
  return result
end


find_nums = [2,4]
nums = [1,2,3,4]

result = next_greater_element(find_nums, nums)
print result
