require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beats.rb'

class JungleBeatsTest < Minitest::Test

  def test_it_exists
    assert JungleBeats.new("beat boop")
  end

  def test_it_plays
    jb = JungleBeats.new("fitter happier more productive")
    assert jb.play
  end

  def test_append
    jb = JungleBeats.new("pee")
    jb.append("doo doo")
    assert_equal "pee doo doo", jb.linked_list.all
  end

  def test_all
    jb = JungleBeats.new("pee pee")
    jb.append("doo doo")
    assert_equal "pee pee doo doo", jb.all
  end

  def test_includes?
    jb = JungleBeats.new("pee pee doo doo")
    jb.append("poop")
    assert_equal true, jb.includes?("poop")
  end

  def test_it_can_prepend
    jb = JungleBeats.new("pee pee poo poo")
    jb.prepend("doo doo")
    assert_equal 6, jb.linked_list.count
  end

  def test_it_can_count
    jb = JungleBeats.new("pee pee poo poo")
    jb.prepend("doo doo")
    jb.all
    assert_equal 6, jb.count
  end

  def test_it_can_pop
    jb = JungleBeats.new("pee pee poo poo")
    jb.pop
    assert_equal 3, jb.count
  end

  def test_it_can_pops
    jb = JungleBeats.new("pee pee poo poo")
    jb.pop(2)
    assert_equal 2, jb.count
  end  # test_it_can_insert

  def test_it_can_find
    jb = JungleBeats.new("pee pee poo poo")
    assert_equal "pee poo", jb.find(1, 2)
  end

  def test_it_can_insert
    jb = JungleBeats.new("pee pee poo poo")
    jb.insert("DUDE", 2)
    assert_equal "pee pee DUDE poo poo", jb.all
  end
end
