# You're given strings J representing the types of stones that are jewels, and S representing the stones you have.
# Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.
#
# The letters in J are guaranteed distinct, and all characters in J and S are letters.
# Letters are case sensitive, so "a" is considered a different type of stone from "A".
#
# Example 1:
#
# Input: J = "aA", S = "aAAbbbb"
# Output: 3
# Example 2:
#
# Input: J = "z", S = "ZZ"
# Output: 0
# NOTE:
# S and J will consist of letters and have length at most 50.
# The characters in J are distinct.

def jewels_And_Stone( j , s)
  if j.nil? || j == ''
    fail "Jewels String is Empty"
  end

  if s.nil? || s == ''
    fail "Stone String is Empty"
  end

  hash_table = {}
  (0..s.length-1).each do |i|
    if hash_table.include? s[i]
      hash_table[s[i]] = hash_table[s[i]] + 1
    else
      hash_table[s[i]] = 1
    end
  end

  count = 0
  (0..j.length-1).each do |i|
    if hash_table.include? (j[i])
      if hash_table[j[i]] != nil
        count = count + hash_table[j[i]]
        hash_table[j[i]] = nil
      else
        fail ("Letters in J are not distinct")
      end
    end
  end

  return count
end

j = 'r'
s = 'aAAbbbb'
result = jewels_And_Stone(j,s)
print result

