# linked_list.rb
require_relative '../lib/node.rb'

class JungleList

  attr_accessor :head

  def initialize(data)
    @head = Node.new(data)
  end

  def tail(current = @head)
    while current.pointer != nil
      current = current.pointer
    end
    current
  end

  def append(data)
    new_node = Node.new(data)
    tail.pointer = new_node
  end

  def prepend(data)
    current = Node.new(data)
    current.pointer = @head
    @head = current
  end

  def count(current = @head)
    count = 1
    until current.pointer == nil
      current = current.pointer
      count += 1
    end
    count
  end

  def pop(data = 1)
    string = ""
    data.times do
      current = @head
      until current.pointer == tail
        current = current.pointer
      end
      string << tail.data + " "
      current.pointer = nil
    end
    string
  end

  def includes?(data)
    current = @head
    until current == nil
      return true if current.data == data
      current = current.pointer
    end
    false
  end

  def insert(data, num)
    count = 0
    current = @head
    new_node = Node.new(data)

    until count == num
      count += 1
      current = current.pointer
    end
    new_node.pointer = current

    current = @head
    count = 0
    until count == (num - 1)
      count += 1
    current = current.pointer
    end
    current.pointer = new_node
  end

  def find(index, amount)
    count = 0
    current = @head
    until count == index
      current = current.pointer
      count += 1
    end
    find_string = ""
    amount.times do
      find_string << current.data + " "
      current = current.pointer
    end
    find_string.strip
  end

  def all
    all = ""
    current = @head
    until current == nil
      all << current.data + " "
      current = current.pointer
    end
    all.strip
  end
end
