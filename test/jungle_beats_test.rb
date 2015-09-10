require_relative '../lib/jungle_beats'

class JungleBeatsTest < Minitest::Test

  def test_it_prints
    message = `ruby ./lib/jungle_beats.rb beats.txt`
    assert_equal "Played 8 sounds from `beats.txt`", message
  end

  def test_it_prints_proper_file_name
    skip
  end

  def test_it_prints_proper_number_of_sounds
    skip
  end

  def test_it_splits_the_string_into_nodes 
  end


end
