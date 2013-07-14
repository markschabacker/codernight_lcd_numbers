require_relative 'seven_segment_character.rb'

class SevenSegmentCharacters
  @@charNil = SevenSegmentCharacter.new
  @@char0 = SevenSegmentCharacter.initialize_from_string("xxx"\
                                                         "x x"\
                                                         "x x"\
                                                         "x x"\
                                                         "xxx")

  @@char1 = SevenSegmentCharacter.initialize_from_string("   "\
                                                         "  x"\
                                                         "  x"\
                                                         "  x"\
                                                         "   ")

  @@char2 = SevenSegmentCharacter.initialize_from_string("xxx"\
                                                         "  x"\
                                                         "xxx"\
                                                         "x  "\
                                                         "xxx")

  @@char3 = SevenSegmentCharacter.initialize_from_string("xxx"\
                                                         "  x"\
                                                         "xxx"\
                                                         "  x"\
                                                         "xxx")

  @@char4 = SevenSegmentCharacter.initialize_from_string("   "\
                                                         "x x"\
                                                         "xxx"\
                                                         "  x"\
                                                         "   ")

  @@char5 = SevenSegmentCharacter.initialize_from_string("xxx"\
                                                         "x  "\
                                                         "xxx"\
                                                         "  x"\
                                                         "xxx")

  @@char6 = SevenSegmentCharacter.initialize_from_string("xxx"\
                                                         "x  "\
                                                         "xxx"\
                                                         "x x"\
                                                         "xxx")

  @@char7 = SevenSegmentCharacter.initialize_from_string("xxx"\
                                                         "  x"\
                                                         "  x"\
                                                         "  x"\
                                                         "   ")

  @@char8 = SevenSegmentCharacter.initialize_from_string("xxx"\
                                                         "x x"\
                                                         "xxx"\
                                                         "x x"\
                                                         "xxx")

  @@char9 = SevenSegmentCharacter.initialize_from_string("xxx"\
                                                         "x x"\
                                                         "xxx"\
                                                         "  x"\
                                                         "xxx")

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
