require_relative "seven_segment_character.rb"

class SevenSegmentCharacterFactory
  def initialize
    @char_mappings = Hash.new(SevenSegmentCharacter.charNil)
    @char_mappings["0"] = SevenSegmentCharacter.char0
    @char_mappings["1"] = SevenSegmentCharacter.char1
    @char_mappings["2"] = SevenSegmentCharacter.char2
    @char_mappings["3"] = SevenSegmentCharacter.char3
    @char_mappings["4"] = SevenSegmentCharacter.char4
    @char_mappings["5"] = SevenSegmentCharacter.char5
    @char_mappings["6"] = SevenSegmentCharacter.char6
    @char_mappings["7"] = SevenSegmentCharacter.char7
    @char_mappings["8"] = SevenSegmentCharacter.char8
    @char_mappings["9"] = SevenSegmentCharacter.char9
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
