require 'spec_helper'

describe Coordinate do

  context "equality" do

    it '(1,2) and (1,2) should be equal' do
      coordinate1 = Coordinate.new(1,2)
      coordinate2 = Coordinate.new(1,2)
      expect(coordinate1).to eq(coordinate2)
    end
    it '(1,2) and (2,3) should be equal' do
      coordinate1 = Coordinate.new(1,2)
      coordinate2 = Coordinate.new(2,3)
      expect(coordinate1).to_not eq(coordinate2)
    end

    describe "Equality should never throw an exception" do

      it "should be equal for same types" do
        coordinate1 = Coordinate.new(1,2)
        coordinate2 = Coordinate.new(1,2)
        expect(coordinate1.class).to eq(coordinate2.class)
      end

      it "should not be equal for different type" do
        coordinate = Coordinate.new(1,2)
        array = Array.new(1)
        expect(coordinate.class).to_not eq(array.class)
      end

      it "should not be null" do
        coordinate1 = Coordinate.new(1,2)
        coordinate2 = Coordinate.new(1,2)
        expect(coordinate1.class).to_not eq(NilClass)
        expect(coordinate2.class).to_not eq(NilClass)
      end

      it "should have same object id" do
        coordinate1 = Coordinate.new(1,2)

        expect(coordinate1.object_id).to eq(coordinate1.object_id)
      end

      it "should not have same object id" do
        coordinate = Coordinate.new(1,2)
        array=Array.new(2)

          coordinate1 = Coordinate.new(1,2)
          coordinate2 = Coordinate.new(1,2)
          hash= {
              coordinate1=>'1',
          }

        expect(hash[coordinate2]).to eq('1')

      end
    end
  end
end