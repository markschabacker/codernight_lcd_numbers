require_relative 'seven_segment_character.rb'

class SevenSegmentCharacters
  @@charNil = SevenSegmentCharacter.new
  @@char0 = SevenSegmentCharacter.new([SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.top_right, SevenSegmentSegment.bottom_left, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom])
  @@char1 = SevenSegmentCharacter.new([SevenSegmentSegment.top_right, SevenSegmentSegment.bottom_right])
  @@char2 = SevenSegmentCharacter.new([SevenSegmentSegment.top, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_left, SevenSegmentSegment.bottom])
  @@char3 = SevenSegmentCharacter.new([SevenSegmentSegment.top, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom])
  @@char4 = SevenSegmentCharacter.new([SevenSegmentSegment.top_left, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_right])
  @@char5 = SevenSegmentCharacter.new([SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom])
  @@char6 = SevenSegmentCharacter.new([SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_left, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom])
  @@char7 = SevenSegmentCharacter.new([SevenSegmentSegment.top, SevenSegmentSegment.top_right, SevenSegmentSegment.bottom_right])
  @@char8 = SevenSegmentCharacter.new([SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_left, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom])
  @@char9 = SevenSegmentCharacter.new([SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom])

  def self.charNil
    @@charNil
  end

  def self.char0
    @@char0
  end

  def self.char1
    @@char1
  end

  def self.char2
    @@char2
  end

  def self.char3
    @@char3
  end

  def self.char4
    @@char4
  end

  def self.char5
    @@char5
  end

  def self.char6
    @@char6
  end

  def self.char7
    @@char7
  end

  def self.char8
    @@char8
  end

  def self.char9
    @@char9
  end
end
