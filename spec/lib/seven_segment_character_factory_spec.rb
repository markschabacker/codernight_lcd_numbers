require_relative '../spec_helper.rb'

describe "The Seven Segment Character Factory" do

  describe "instantiation" do
    it "can be instantiated" do
      SevenSegmentCharacterFactory.new.should_not be_nil
    end
  end

  let (:character_factory) { SevenSegmentCharacterFactory.new }

  describe "Multiple Character Generation" do
    it "returns its own get_character result for each token" do
      char_a = "A";
      ret_char_a = :ret_char_a

      char_b = "B";
      ret_char_b = :ret_char_b

      char_c = "C";
      ret_char_c = :ret_char_c

      input_string = char_a + char_b + char_c

      { char_a => ret_char_a,
        char_b => ret_char_b,
        char_c => ret_char_c }.each do |char, ret_char|
        character_factory.should_receive(:get_character).with(char).and_return(ret_char)
      end

      character_factory.get_characters(input_string).should == [ ret_char_a, ret_char_b, ret_char_c]
    end
  end

  describe "Single Character Generation" do
    it "returns SevenSegmentCharacterNil for an unknown character" do
      character_factory.get_character("Z").should == SevenSegmentCharacter.charNil
    end

    { "0" => SevenSegmentCharacter.char0,
      "1" => SevenSegmentCharacter.char1,
      "2" => SevenSegmentCharacter.char2,
      "3" => SevenSegmentCharacter.char3,
      "4" => SevenSegmentCharacter.char4,
      "5" => SevenSegmentCharacter.char5,
      "6" => SevenSegmentCharacter.char6,
      "7" => SevenSegmentCharacter.char7,
      "8" => SevenSegmentCharacter.char8,
      "9" => SevenSegmentCharacter.char9}.each do |input_char, expected_seven_segment_char|
      it "returns #{expected_seven_segment_char} for #{input_char}" do
        character_factory.get_character(input_char).should == expected_seven_segment_char
      end
    end
  end
end
