require "rspec"
require "classes"

describe Array do
    describe "#my_uniq" do 
        it "removes duplicates" do
            sample = Array.new([1,2,1,3,3])
            expect(sample.my_uniq).to eq([1,2,3])
        end
        context "if the array is empty" do
            it "returns an empty array" do
                sample = Array.new([])
                expect(sample.my_uniq).to eq([])
            end
        end
        context "if the array does not contain duplicate elements" do
            it "returns the array" do
                sample = Array.new([1,2,3])
                expect(sample.my_uniq).to eq([1,2,3])
            end
        end
        it "should return a new array" do 
            sample = Array.new([1,2,1,3,3])
            expect(sample.my_uniq).to_not be(sample)
        end
    end     
end