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
end
