require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list.rb'

class JungleListTest < Minitest::Test
  def test_head_is_nil
    list = JungleList.new(nil)
    assert_equal nil, list.head.data
  end

  def test_it_has_a_head
    list = JungleList.new("beep")
    assert_equal "beep", list.head.data
  end

  def test_it_can_append
    list = JungleList.new("beep")
    list.append("bop")
    assert_equal "bop", list.head.pointer.data
  end

  def test_it_can_delete
    skip
  end

  def test_it_can_count
    skip
  end

  def test_it_can_prepend
    skip
  end

  def test_it_can_insert
    skip
  end

  def test_it_can_includes
    skip
  end

  def test_it_can_pop
    skip
  end
end
