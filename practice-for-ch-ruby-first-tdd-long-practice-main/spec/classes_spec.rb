require "rspec"
require "classes"

describe Array do
    describe "#my_uniq" do 
        it "removes duplicates" do
            sample = Array.new([1,2,1,3,3,3.0])
            expect(sample.my_uniq).to eq([1,2,3,3.0])
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
    
    describe "#two_sum" do
        it "returns all pairs at positions where the elements in those positions sum to 0" do
            sample = Array.new([-1,0,2,-2,1])
            expect(sample.two_sum).to eq([[0,4], [2,3]])
        end

        it "returns pairs sorted dictionary wise" do 
            sample = Array.new([-1, 1, -2, 2, 0, 1])
            expect(sample.two_sum).to eq([[0,1], [0,5], [2,3]])
        end

        context "no elements sum to zero" do 
            it "returns an empty array" do 
                sample = Array.new([1,2])
                expect(sample.two_sum).to eq([])
            end
        end
    end

    describe "#my_transpose" do
        it "returns a row oriented representation of columns" do
            sample = Array.new([
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
              ])

            expect(sample.my_transpose).to eq([
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
              ])
        end

        it "returns a square matrix" do
            sample = Array.new([
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
            ])
            
            expect(sample.length).to eq(3)
            expect(sample[0].length).to eq(3)
        end

        context "input matrix is empty" do
            it "returns an empty 2d array" do
                sample = Array.new([[]])

                expect(sample.my_transpose).to eq([[]])
            end
        end
    end

    describe "#stock_picker" do 
        it "returns an array of the most profitable pair of days" do 
            sample = Array.new([1,2,3,4,5])
            expect(sample.stock_picker).to eq([0,4])
        end
        it "returns an array where the buy day is at a smaller index than the sell day" do
            sample = Array.new([2,4,7,1,10])
            expect(sample.stock_picker).to eq([3,4])
        end
    end
end

