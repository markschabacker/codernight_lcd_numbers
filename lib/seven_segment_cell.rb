class SevenSegmentCell
  ## TODO: class members?
  CELL_COLUMNS = 3
  CELL_ROWS = 5

  @@horizontal_mappings = [[nil, SevenSegmentSegment.top, nil],
                           [nil, nil, nil],
                           [nil, SevenSegmentSegment.middle, nil],
                           [nil, nil, nil],
                           [nil, SevenSegmentSegment.bottom, nil]]

  @@vertical_mappings = [[nil, nil, nil],
                         [SevenSegmentSegment.top_left, nil, SevenSegmentSegment.top_right],
                         [nil, nil, nil],
                         [SevenSegmentSegment.bottom_left, nil, SevenSegmentSegment.bottom_right],
                         [nil, nil, nil]]

  def initialize(seven_segment_character)
    @seven_segment_character = seven_segment_character
  end

  def character_at_index(x, y)
    return "-" if @seven_segment_character.has_segment?(@@horizontal_mappings[y][x])
    return "|" if @seven_segment_character.has_segment?(@@vertical_mappings[y][x])
    " "
  end
end
