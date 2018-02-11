# Given a string, determine if a permutation of the string could form a palindrome.
#
# For example,
# "code" -> False, "aab" -> True, "carerac" -> True.

## No Reference

def is_palindrome(str)
  hash_table = {}
  (0..str.length - 1).each do |i|
    if hash_table[str[i]]
      hash_table.delete (str[i])
    else
      hash_table[str[i]] = 1
    end
  end
  if hash_table.count > 1
    return false
  else
    return true
  end
end
