require "rspec"
require "hanoi"

describe Hanoi do
    subject(:towers) { Hanoi.new }

    describe "#initialize" do
        it "instantiates pile 1 with 4 disks in decreasing order" do
            expect(towers.pile1).to eq([4, 3, 2, 1])
        end

        it "instantiates pile 2 and 3 with empty arrays" do
            expect(towers.pile2).to eq([])
            expect(towers.pile3).to eq([])
        end
    end

end