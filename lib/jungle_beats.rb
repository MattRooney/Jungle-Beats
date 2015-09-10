#jungle_beats.rb
require_relative 'linked_list.rb'
require_relative 'node.rb'

class JungleBeats

  def initialize(beats_string)
    @beats_string = beats_string
  end

  def beats_string
    @beats_string
  end



  def play
    `say -v Fred "#{beats_string}"`
  end
end

run_from_file =  ($PROGRAM_NAME == __FILE__)

if run_from_file
  input_file = ARGV[0]
  beats_string = File.read(input_file)
  sounds_count = beats_string.split.length

  JungleBeats.new(beats_string).play
  puts "Played #{sounds_count} sounds from `#{input_file}`"
end
