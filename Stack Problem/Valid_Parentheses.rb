# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#
# The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

def is_valid(s)

  arr = []
  (0..s.length-1).each do |index|
    if s[index] == '(' || s[index] == '{' || s[index] == '['
      arr.push s[index]
    elsif s[index]== ')' && !arr.empty? && arr.last =='('
      arr.pop
    elsif s[index]== '}' && !arr.empty? && arr.last =='{'
      arr.pop
    elsif s[index]== ']' && !arr.empty? && arr.last =='['
      arr.pop
    else
      return false
    end
  end
  return arr.empty?
end