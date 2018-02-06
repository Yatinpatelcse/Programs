# Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
#
# Examples:
#
# s = "leetcode"
# return 0.
#
# s = "loveleetcode",
# return 2.


def first_uniq_char(s)
  if s.nil? || s == ''
    fail('S is empty')
  end
end

s = ''
result=first_uniq_char(s)
print result