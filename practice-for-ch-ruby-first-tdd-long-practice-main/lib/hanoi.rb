class Hanoi
    attr_reader :pile1, :pile2, :pile3, :towers

    def initialize
        @pile1 = [4, 3, 2, 1]
        @pile2 = []
        @pile3 = []
        @towers = [@pile1, @pile2, @pile3]
    end

    def render
        towers.each do |pile|
            print pile.join(" ") 
            puts
        end
    end

    def move(pile_pop, pile_push)
        pop_stack = which_pile(pile_pop)
        push_stack = which_pile(pile_push)

        raise if empty?(pop_stack)

        if peek(pop_stack) < peek(push_stack)
            push << pop.pop 
            return
        else 
            return 
        end
        
    end

    def which_pile(n)
        raise if (1..3).include?(n)
        case n
        when 1 
            return pile1 
        when 2 
            return pile2
        when 3
            return pile3 
        end
    end

    def empty?(pile)
        pile.all? {|ele| ele == "_"}
    end

    def peek(pile)
        return 0 if pile.all? {ele| ele == "_"}
        pile[-1]git 
    end

    def won?
        pile3 == [4,3,2,1]
    end

    def play 
        render
        until won?
            print "Enter a pile number to pop from, and then enter a pile number to push to, like this: 1 2."
            puts
            get = gets.chomp 
            move(get.split(" ").map {|ele| ele.to_i})
            render 
        end
        print "Victory! Game end."
        puts
    end

    private 
    def queueify

    end
end

h = Hanoi.new 
h.play