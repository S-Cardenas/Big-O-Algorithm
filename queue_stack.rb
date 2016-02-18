class MyQueue
  def initialize
    @store = []
  end

  def enqueue(arg)
    @store.shift(arg)
  end

  def dequeue
    @store.pop
  end

  def peek
    @store[-1]
  end

  def size
    @store.length
  end

  def empty?
    @store.length == 0
  end
end

class MyStack
  def initialize
    @store = []
  end

  def push(arg)
    @store.unshift
  end

  def pop
    @store.shift
  end

  def peek
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    @store.length == 0
  end

end

class MyStackQueue
  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def enqueue(arg)
    until @out_stack.empty?
      @in_stack.push(@out_stack.pop)
    end
    @in_stack.push(arg)
  end

  def dequeue
    until @in_stack.empty?
      @out_stack.push(@in_stack.pop)
    end
    @out_stack.pop
  end

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

end
