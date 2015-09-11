require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beats.rb'

class JungleBeatsTest < Minitest::Test

  def test_it_exists
    assert JungleBeats.new("beat bop")
  end

  def test_it_plays
    jb = JungleBeats.new("beat bop")
    assert jb.play
  end

  

end
