#jungle_beats.rb
require_relative '../lib/linked_list.rb'
require 'pry'

class JungleBeats
  attr_accessor :beats, :linked_list

  def initialize(beats)
    @beats = beats
    split_beats = beats.split
    first_beat = split_beats[0]
    @linked_list = JungleList.new(first_beat)
    split_beats[1..-1].each do |beat|
      linked_list.append(beat)
    end
  end

  def beats
    @beats
  end

  def append(beats)
    split_beats = beats.split
    split_beats[0..-1].each do |beat|
      linked_list.append(beat)
    end
    self.all
  end

  def prepend(beats)
    split_beats = beats.split
    split_beats[0..-1].each do |beat|
      linked_list.prepend(beat)
    end
  end

  def all
    linked_list.all
  end

  def includes?(n)
    linked_list.includes?(n)
  end

  def count
    linked_list.count
  end

  def pop(n = 1)
    linked_list.pop(n)
  end

  def find(index, amount)
    linked_list.find(index, amount)
  end

  def insert(data, num)
    linked_list.insert(data, num)
  end

  def play
    `say -r 500 -v Boing "#{linked_list.all}"`
    self.count
  end
#require a pry session
# binding.pry
end

#running from the command line with a beats.txt doc
run_from_file =  ($PROGRAM_NAME == __FILE__)

if run_from_file
  input_file = ARGV[0]
  beats = File.read(input_file)
  sounds_count = beats.split.length

  JungleBeats.new(beats).play
  puts "Played #{sounds_count} sounds from `#{input_file}`"
end
