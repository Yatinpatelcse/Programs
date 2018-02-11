# Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
#
# Examples:
#
# s = "leetcode"
# return 0.
#
# s = "loveleetcode",
# return 2.
# Note: You may assume the string contain only lowercase letters.

def first_uniq_char(s)
  hash_table = {}
  (0..s.length-1).each do |i|
    if hash_table.include? (s[i])
      hash_table[s[i]] = hash_table[s[i]] + 1
    else
      hash_table[s[i]] = 1
    end
  end

  (0..s.length-1).each do |i|
    if hash_table[s[i]] == 1
      return i
    end
  end
  return -1
end