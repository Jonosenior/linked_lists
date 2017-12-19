class LinkedList

  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @node_count = 0
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      tail.next = Node.new(value)
    end
    @node_count += 1
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      @head, @head.next = Node.new(value), @head
    end
    @node_count += 1
  end

  def size
    @node_count
  end

  def tail
    current = @head
    until !current.next
      current = current.next
    end
    @tail = current
  end

  def at(index)
    current = @head
    prev = nil
    index.times do
      current = current.next
    end
    current
  end

  def pop
    current = @head
    prev = nil
    until !current.next
      prev, current = current, current.next
    end
    @node_count -= 1
    prev.next = nil
  end

  def contains?(val)
    current = @head
    until !current
      return true if current.value == val
      current = current.next
    end
    false
  end

  def find(data)
    current = @head
    index = 0
    until !current
      return index if current.value == data
      current = current.next
      index += 1
    end
    return nil
  end

  def to_s
    current = @head
    until !current
      print "( #{current.value} ) -> "
      current = current.next
    end
  end

  def insert_at(value, index)
    at(index).next = Node.new(value, at(index).next)
    @node_count += 1
  end

  def remove_at(index)
    current = @head
    prev = nil
    index.times do
      prev, current = current, current.next
    end
    prev.next = current.next
    current = nil
    @node_count -= 1
  end

end

class Node

  attr_accessor :value, :next

  def initialize(value=nil, next_node=nil)
    @value = value
    @next = next_node
  end

end

# list = LinkedList.new
# puts "SIZE: #{list.size}"
# list.append(1)
# puts list.to_s
# puts "SIZE: #{list.size}"
# list.append(2)
# puts list.to_s
# puts "HEAD: #{list.head.value}"
# puts "HEADNEXT: #{list.head.next.value}"
# puts "SIZE: #{list.size}"
# list.prepend(0)
# puts list.to_s
# puts "HEAD: #{list.head.value}"
# puts "HEADNEXT: #{list.head.next.value}"
# puts "HEADNEXTNEXT: #{list.head.next.next.value}"
# puts list.append(3)
# puts list.to_s
# puts "SIZE: #{list.size}"
# puts "HEADNEXTNEXTNEXT: #{list.head.next.next.next.value}"
# puts "TAIL: #{list.tail.value}"
# puts "HEAD: #{list.head.value}"
# puts "LIST.AT(3): #{list.at(3).value}"
# puts "LIST.AT(2): #{list.at(2).value}"
# list.pop
# puts list.to_s
# puts "TAIL: #{list.tail.value}"
# puts "SIZE: #{list.size}"
# list.append(3)
# puts "List contains 9: #{list.contains?(9)}"
# puts "List contains 2: #{list.contains?(2)}"
# puts "List contains 3: #{list.contains?(3)}"
# puts "LIST FIND 9: #{list.find(9)}"
# puts "LIST FIND 3: #{list.find(3)}"
# puts list.to_s
# list.insert_at(9, 2)
# puts list.to_s
# list.remove_at(3)
# puts list.to_s
# puts "SIZE: #{list.size}"
