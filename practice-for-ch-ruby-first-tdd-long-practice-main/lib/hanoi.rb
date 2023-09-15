class Hanoi
    attr_reader :pile1, :pile2, :pile3, :towers

    def initialize
        @pile1 = [4, 3, 2, 1]
        @pile2 = []
        @pile3 = []
        @towers = [@pile1, @pile2, @pile3]
    end

    def render
        puts towers.join(" ")
    end

    def move(pile_x, pile_y)
        
    end
end