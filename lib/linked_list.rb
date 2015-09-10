# linked_list.rb
require_relative 'node.rb'
require_relative 'jungle_beats.rb'

class JungleList < JungleBeats

  attr_accessor :head

  def initialize(data)
    @head = Node.new(data)
  end

  def append(data)
    current = @head
    while current.pointer != nil
      current = current.pointer
    end
    current.pointer = Node.new(data)
  end

end

#
  # def tail
  #   @next_node == nil
  # end

# head.next_node.next_node
# do
#  until next_node = nil
# end
# # dont store count
