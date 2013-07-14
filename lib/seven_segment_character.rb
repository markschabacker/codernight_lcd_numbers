require_relative 'seven_segment_segment.rb'

class SevenSegmentCharacter
  def initialize(segments = [])
    @segments = segments
  end

  def has_segment?(segment)
    return @segments.include?(segment)
  end
end
