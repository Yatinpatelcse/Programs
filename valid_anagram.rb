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

#
# #### Below method using two each loops
# ### No Reference
#
def valid_anagram(s, t)
  if s.nil? || s == ''
    fail("s: Enter the String")
  end


  if t.nil? || t == ''
    fail("t: Enter the String")
  end

  if s.length != t.length
    fail "String are not equal #{s} != #{t}"
  end

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

s = "yatin"
t = "tinya"
hash_result = valid_anagram(s, t)
print hash_result


### Method using hash map
def valid_anagram_hash_map(s, t)
  if s.length == nil
    fail("s: Enter the String")
  end


  if t.length == nil
    fail("t: Enter the String")
  end

  if s.length != t.length
    fail "String are not equal #{s} != #{t}"
  end


  hash_table = {}
  (0..s.size - 1).each do |i|
    if s[i] != t[i]
      if ((hash_table.include? s[i]) && (hash_table.include? t[i]))
        if (hash_table.include? s[i])
          if hash_table[s[i]] == 1
            hash_table.delete (s[i])
          else
            hash_table[s[i]] = hash_table[s[i]] - 1
          end
        end

        if (hash_table.include? t[i])
          if hash_table[t[i]] == 1
            hash_table.delete (t[i])
          else
            hash_table[t[i]] = hash_table[t[i]] - 1
          end
        end
      elsif ((hash_table.include? s[i]) || (hash_table.include? t[i]))
        if (hash_table.include? s[i])
          if hash_table[s[i]] == 1
            hash_table.delete (s[i])
          else
            hash_table[s[i]] = hash_table[s[i]] - 1
          end
        else
          hash_table[s[i]] = 1
        end


        if (hash_table.include? t[i])
          if hash_table[t[i]] == 1
            hash_table.delete (t[i])
          else
            hash_table[t[i]] = hash_table[t[i]] - 1
          end
        else
          hash_table[t[i]] = 1
        end
      else
        hash_table[s[i]] = 1
        hash_table[t[i]] = 1
      end
    end
  end

  if hash_table.length > 0
    return false
  else
    return true
  end
end


s = "bahvi"
t = "tinya"
hash_result = valid_anagram_hash_map(s, t)
print hash_result