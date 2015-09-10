# node.rb
require_relative 'linked_list.rb'
require_relative 'jungle_beats.rb'

class Node < JungleBeats
  
  attr_accessor :data, :pointer

  def initialize(data, pointer = nil)
    @data = data
    @pointer = pointer
  end
end
#
