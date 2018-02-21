class MinStack

  UnderflowError = Class.new StandardError

  attr_accessor :min_stacks

  def initialize
    @min_stacks = []
  end

  def push(x)
    @min_stacks.push x
  end

  def pop()
    fail UnderflowError if @min_stacks.empty?
    @min_stacks.pop
  end

  def top()
    @min_stacks.last
  end

  def get_min()
    fail UnderflowError if @min_stacks.empty?
    @min_stacks.min
  end

end

obj = MinStack.new()
obj.push(6)
obj.push(7)
obj.push(4)
obj.push(3)
obj.push(5)
obj.pop()
param_3 = obj.top()
puts "top => #{param_3}"
param_4 = obj.get_min()
puts "Min => #{param_4}"
obj.pop()
param_3 = obj.top()
puts "top => #{param_3}"
param_4 = obj.get_min()
puts "Min => #{param_4}"
obj.pop()
param_3 = obj.top()
puts "top => #{param_3}"
param_4 = obj.get_min()
puts "Min => #{param_4}"