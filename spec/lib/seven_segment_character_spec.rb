require_relative '../spec_helper.rb'

describe "A SevenSegmentCharacter" do
  describe "initialization" do
    it "can be initialized (no arguments)" do
      SevenSegmentCharacter.new.should_not be_nil
    end

    it "can be initialized with a list of segments" do
      SevenSegmentCharacter.new(:segments).should_not be_nil
    end
  end

  describe "has_segment?" do
    it "returns false for nil" do
      SevenSegmentCharacter.new.has_segment?(nil).should be_false
    end

    it "returns false if segments does not contain the segment" do
      segment = :target_segment
      character = SevenSegmentCharacter.new
      character.has_segment?(segment).should be_false
    end

    it "returns true if segments contains the segment" do
      segment = :target_segment
      character = SevenSegmentCharacter.new([segment])
      character.has_segment?(segment).should be_true
    end
  end

  describe "Character Class Members" do
    [
      { name: "charNil", expected_segments: [] },
      { name: "char0", expected_segments: [SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.top_right, SevenSegmentSegment.bottom_left, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom] },
      { name: "char1", expected_segments: [SevenSegmentSegment.top_right, SevenSegmentSegment.bottom_right] },
      { name: "char2", expected_segments: [SevenSegmentSegment.top, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_left, SevenSegmentSegment.bottom] },
      { name: "char3", expected_segments: [SevenSegmentSegment.top, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom] },
      { name: "char4", expected_segments: [SevenSegmentSegment.top_left, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_right] },
      { name: "char5", expected_segments: [SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom] },
      { name: "char6", expected_segments: [SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_left, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom] },
      { name: "char7", expected_segments: [SevenSegmentSegment.top, SevenSegmentSegment.top_right, SevenSegmentSegment.bottom_right] },
      { name: "char8", expected_segments: [SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_left, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom] },
      { name: "char9", expected_segments: [SevenSegmentSegment.top, SevenSegmentSegment.top_left, SevenSegmentSegment.top_right, SevenSegmentSegment.middle, SevenSegmentSegment.bottom_right, SevenSegmentSegment.bottom] }
    ].each do |exp|
      describe "#{exp[:name]}" do
        exp[:expected_segments].each do |expected_segment|
          it "has segment: #{expected_segment}" do
            char = SevenSegmentCharacter.send(exp[:name])
            char.has_segment?(expected_segment).should be_true
          end
        end

        [SevenSegmentSegment.top,
        SevenSegmentSegment.top_left,
        SevenSegmentSegment.top_right,
        SevenSegmentSegment.middle,
        SevenSegmentSegment.bottom_left,
        SevenSegmentSegment.bottom_right,
        SevenSegmentSegment.bottom].reject { |item| exp[:expected_segments].include?(item) }.each do |unexpected_segment|
          it "does not have segment: #{unexpected_segment}" do
            char = SevenSegmentCharacter.send(exp[:name])
            char.has_segment?(unexpected_segment).should be_false
          end
        end
      end
    end
  end
end
