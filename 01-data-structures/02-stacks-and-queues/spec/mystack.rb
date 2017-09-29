class MyStack
  attr_accessor :top, :counter

  def initialize
    @stack = Array.new
    self.top = nil
    self.counter = nil
  end

  def push(item)
    if self.counter.nil?
      self.counter = 0
    else
      self.counter += 1
    end

    @stack[self.counter] = item
    self.top = @stack[self.counter]
  end

  def pop
    temp_var = @stack[self.counter]
    if self.counter == 0
      self.counter = nil
      self.top = nil
    else
      self.counter -= 1
      self.top = @stack[self.counter]
    end
    return temp_var
  end

  def empty?
    if self.top == nil
      true
    else
      false
    end
  end
end
