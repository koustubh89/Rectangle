require 'spec_helper'

describe Line do
  context "should have a length" do
    it "length should be 1 for the line (1,1),(2,1)" do
      line = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 1))
      expect(line.length).to eq(1)
    end

    it "length should be 5 for the line (1,2),(4,6)" do
      line = Line.new(Coordinate.new(1, 2), Coordinate.new(4, 6))
      expect(line.length).to eq(5)
    end

    it "length should be 8 for the line (2,6),(9,11)" do
      line = Line.new(Coordinate.new(2, 6), Coordinate.new(9, 11))
      expect(line.length).to eq(8)
    end

  end
  context "length should be 0 " do
    it "for lines with same coordinates (2,2) and (2,2)" do
      line = Line.new(Coordinate.new(2, 2), Coordinate.new(2, 2))
      expect(line.length).to eq(0)
    end
  end

  context "equality" do

    it "lines (1,1),(2,4) and (1,1),(2,4) should be equal" do
      line1 = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))
      line2 = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))
      expect(line1).to eq(line2)
    end

    it "lines (1,8),(3,5) and (2,3),(9,9) should not be equal" do
      line1 = Line.new(Coordinate.new(1, 8), Coordinate.new(3, 5))
      line2 = Line.new(Coordinate.new(2, 3), Coordinate.new(9, 9))
      expect(line1).to_not eq(line2)
    end

    it "lines (2,4),(7,8) and (7,8),(2,4) should be equal" do
      line1 = Line.new(Coordinate.new(2, 4), Coordinate.new(7, 8))
      line2 = Line.new(Coordinate.new(7, 8), Coordinate.new(2, 4))
      expect(line1).to eq(line2)
    end

    describe "Equality should never throw an exception" do

      it "should be of same type" do
        line1 = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))
        line2 = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))
        expect(line1.class).to eq(line2.class)
      end

      it "should not be equal for different type" do
        line = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))
        array = Array.new(1)
        expect(line.class).to_not eq(array.class)
      end

      it "should not be null" do
        line1 = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))
        line2 = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))
        expect(line1.class).to_not eq(NilClass)
        expect(line2.class).to_not eq(NilClass)
      end

      it "should have same object id" do
        line = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))

        expect(line.object_id).to eq(line.object_id)
      end

      it "should not have same object id" do
        line = Line.new(Coordinate.new(1, 1), Coordinate.new(2, 4))
        array = Array.new(1)
        expect(line.object_id).to_not eq(array.object_id)
      end
      
    end
  end
end 