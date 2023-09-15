require "set"

class Array
    def my_uniq 
        holder = Set.new
        self.each do |ele|
            holder << ele 
        end
        holder.to_a
    end

    def two_sum
        holder = []

        self.each_with_index do |ele1, i|
            self.each_with_index do |ele2, j|
                if j > i && ele1 + ele2 == 0
                    holder << [i, j]
                end
            end
        end

        holder
    end
end