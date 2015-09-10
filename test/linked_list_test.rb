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

  def test_it_has_a_tail
    list = JungleList.new("beep")
    assert_equal "beep", list.tail.data
  end

  def test_it_can_append
    list = JungleList.new("beep")
    list.append("bop")
    list.append("pop")
    assert_equal "pop", list.tail.data
  end

  def test_it_still_finds_tail
    list = JungleList.new("beep")
    list.append("bop")
    list.append("pop")
    list.append("pop")
    list.append("pop")
    list.append("pop")
    list.append("blam")
    assert_equal "blam", list.tail.data
  end

  def test_it_can_prepend
    list = JungleList.new("beep")
    list.append("bloop")
    list.prepend("bibbidy")
    assert_equal "bibbidy", list.head.data
  end

  def test_it_can_count
    list = JungleList.new("beep")
    list.append("bop")
    list.append("beep")
    list.append("pop")
    assert_equal 4, list.count
  end

  def test_it_can_pop
    list = JungleList.new("beep")
    list.append("bop")
    list.append("beep")
    list.pop
    assert_equal "bop", list.tail.data
  end

  def test_it_can_pop_two
    list = JungleList.new("beep")
    list.append("bop")
    list.append("beep")
    list.pop(2)
    assert_equal "beep", list.tail.data
  end

  def test_it_can_pop_three
    list = JungleList.new("beep")
    list.append("bop")
    list.append("duh")
    list.append("blop")
    list.append("blop")
    list.append("blop")
    list.pop(3)
    assert_equal "duh", list.tail.data
  end

  def test_it_returns_popped_value
    skip
    list = JungleList.new("beep")
    list.append("bop")
    list.append("duh")
    list.append("blop")
    list.append("blop")
    list.append("wop")
    list.pop
    assert_equal "blop", list.tail.data
    assert_equal "wop", list.pop
  end

  def test_it_can_includes
    list = JungleList.new("beep")
    list.append("bop")
    list.append("blop")
    list.append("poop")
    assert_equal true, list.includes?("blop")
  end

  def test_it_can_includes_head
    list = JungleList.new("beep")
    list.append("bop")
    list.append("blop")
    list.append("poop")
    assert_equal true, list.includes?("beep")
  end

  def test_it_can_includes_tail
    list = JungleList.new("beep")
    list.append("bop")
    list.append("blop")
    list.append("poop")
    assert_equal true, list.includes?("poop")
  end

  def test_it_can_includes_false
    list = JungleList.new("beep")
    list.append("bop")
    list.append("blop")
    list.append("poop")
    assert_equal false, list.includes?("matt")
  end

  def test_it_can_insert
    list = JungleList.new("beep")
    list.append("bop")
    list.append("blop")
    list.insert("value", 1)
    assert_equal "value", list.head.pointer.data
  end

  def test_it_can_insert_at_head
    skip
    list = JungleList.new("beep")
    list.append("bop")
    list.append("blop")
    list.insert("value", 0)
    assert_equal "value", list.head.data
  end

  def find
    skip
  end

  def test_all
    list = JungleList.new("one")
    list.append("two")
    list.append("three")
    list.append("four")
    assert_equal "one two three four", list.all
  end
end
