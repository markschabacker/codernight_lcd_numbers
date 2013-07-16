require_relative 'seven_segment_character_factory.rb'
require_relative 'seven_segment_cell.rb'

class SevenSegmentDisplayFormatter
  def initialize(seven_segment_character_factory = SevenSegmentCharacterFactory.new)
    @seven_segment_character_factory = seven_segment_character_factory
  end

  def format(input_string, multiplier)
    characters = @seven_segment_character_factory.get_characters(input_string)
    cells = characters.map do |char|
      SevenSegmentCell.new(char)
    end

    output = ""
    (0...SevenSegmentCell.cell_rows).each do |y|
      multiplier_for_row(y, multiplier).times do
        cells.each_with_index do |cell, index|
          (0...SevenSegmentCell.cell_columns).each do |x|
            multiplier_for_column(x, multiplier).times do
              output << cell.character_at_index(x,y)
            end
          end
          output << " " if index < (cells.count - 1)
        end
        output << "\n"
      end
    end
    output
  end

private
  def use_multiplier_for_column(column)
    column == 1
  end

  def multiplier_for_column(column, multiplier)
    use_multiplier_for_column(column) ? multiplier : 1
  end

  def multiplier_for_row(row, multiplier)
    use_multiplier_for_row(row) ? multiplier : 1
  end

  def use_multiplier_for_row(row)
    (row == 1) || (row == 3)
  end
end
