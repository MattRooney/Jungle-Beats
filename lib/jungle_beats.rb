#jungle_beats.rb
require_relative '../lib/linked_list.rb'
require 'pry'

class JungleBeats
  attr_accessor :beats, :linked_list

  def initialize(beats)
    @beats = beats
    @link_list = JungleList.new(beats)
  end

  def beats
    @beats
  end

  def play
    `say -v Fred "#{beats}"`
  end
# binding.pry
end

# run_from_file =  ($PROGRAM_NAME == __FILE__)
#
# if run_from_file
#   input_file = ARGV[0]
#   beats_string = File.read(input_file)
#   sounds_count = beats_string.split.length
#
#   JungleBeats.new(beats_string).play
#   puts "Played #{sounds_count} sounds from `#{input_file}`"
# end
