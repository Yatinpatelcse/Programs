# Given two strings s and t, write a function to determine if t is an anagram of s.
#
# For example,
# s = "anagram", t = "nagaram", return true.
# s = "rat", t = "car", return false.
#
# Note:
# You may assume the string contains only lowercase alphabets.
#
# Follow up:
# What if the inputs contain unicode characters? How would you adapt your solution to such case?
#


def is_anagram(s, t)
  hash_table = {}
  (0..s.size-1).each do |i|
    if !hash_table[s[i]]
      hash_table[s[i]] = 1
    else
      hash_table[s[i]] = hash_table[s[i]] + 1
    end
  end


  (0..t.size-1).each do |i|
    if hash_table[t[i]] == 1
      hash_table.delete (t[i])
    elsif !hash_table[t[i]]
      hash_table[t[i]] =  1
    else
      hash_table[t[i]] = hash_table[t[i]] - 1
    end
  end

  if hash_table.length > 0
    return false
  else
    return true
  end
end