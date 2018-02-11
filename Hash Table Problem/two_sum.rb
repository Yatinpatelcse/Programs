### Given an array of integers, return indices of the two numbers such that they add up to a specific target.
###
###     You may assume that each input would have exactly one solution, and you may not use the same element twice.
###
###     Example:
###     Given nums = [2, 7, 11, 15], target = 9,
###
###           Because nums[0] + nums[1] = 2 + 7 = 9,
###     return [0, 1].


## Reference https://discuss.leetcode.com/topic/14496/accepted-ruby-solution

def two_sum(nums, target)

  numsSearch = {}
  nums.each_with_index do |value, index|
    ### Storing the value as index of hash
    second_value = numsSearch[target - value]

    ### checking if hash return value
    if second_value != nil
      return [second_value, index]
    end

    ### inserting the value as index and index as value in hash map
    numsSearch[value] = index
  end

  return []
end
