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

require 'date'
require 'time'


nums = [1, 2, 3, 4, 5, 11, 13, 15, 16, 17, 18, 19, 20, 21, 50, 5]
target = 10

def two_sum(nums , target)

  if (nums.length < 2)
    fail ("Array size must be greater than two or equal to two")
  end

  if target.is_a?(Integer) == false
    fail("Target Number must be an Integer")
  end

  numsSearch = {}
  result = []
  $current_time = Time.now
  nums.each_with_index do |value, index|
    ### Storing the value as index of hash
    second_value = numsSearch[target - value]

    ### checking if hash return value
    if second_value != nil
      result = [second_value, index]
      $end_time = Time.now
      return result
    end

    ### inserting the value as index and index as value in hash map
    numsSearch[value] = index
  end
  $end_time = Time.now

  return nil
end

ret_val = two_sum(nums,target)
diff = $end_time - $current_time
print "Total Execution: #{diff}\n"
if ret_val.nil?
  print "No matches found"
else
  print "Using Hash map => Matches found #{ret_val} \n"
end







##### using two for loop
def two_sum_using_loops(nums, target)

  if (nums.length < 2)
    fail ("Array size must be greater than two or equal to two")
  end

  if target.is_a?(Integer) ==false
    fail("Target Number must be an Integer")
  end

  numsSearch = {}
  result = []
  $current_time = Time.now
  for i in 0..nums.size-1
    for j in i+1..nums.size-1
      if nums[i] + nums[j] == target
        $end_time = Time.now
        return [i , j]
      end
    end
  end
  $end_time = Time.now
  return nil
end

ret_val = two_sum_using_loops(nums,target)
diff = "#{ $end_time - $current_time }"
print "Total Execution: #{diff}\n"
if ret_val.nil?
  print "No matches found"
else
  print "Using two for loop => Matches found #{ret_val}"
end