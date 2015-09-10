require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node.rb'

class NodeTest < Minitest::Test
  def test_node_exists
    node = Node.new("data")
    assert_equal "data", node.data
  end

  def test_node_contains_beat
    node = Node.new("bleep")
    assert_equal "bleep", node.data
  end

  def test_node_has_nil_for_default_pointer
    node = Node.new("beat")
    assert_equal nil, node.pointer
  end
end
