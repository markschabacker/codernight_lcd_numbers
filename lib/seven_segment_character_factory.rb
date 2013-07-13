require_relative "seven_segment_character.rb"

class SevenSegmentCharacterFactory
  def initialize
    @char_mappings = Hash.new(SevenSegmentCharacterNil.new)
    @char_mappings["0"] = SevenSegmentCharacter0.new
    @char_mappings["1"] = SevenSegmentCharacter1.new
    @char_mappings["2"] = SevenSegmentCharacter2.new
    @char_mappings["3"] = SevenSegmentCharacter3.new
    @char_mappings["4"] = SevenSegmentCharacter4.new
    @char_mappings["5"] = SevenSegmentCharacter5.new
    @char_mappings["6"] = SevenSegmentCharacter6.new
    @char_mappings["7"] = SevenSegmentCharacter7.new
    @char_mappings["8"] = SevenSegmentCharacter8.new
    @char_mappings["9"] = SevenSegmentCharacter9.new
  end
  def get_characters(input_string)
    input_string.split("").map do |char_token|
      self.get_character(char_token)
    end
  end

  def get_character(input_character)
    @char_mappings[input_character]
  end
end
