require "set"

class Array
    def my_uniq 
        holder = Set.new
        self.each do |ele|
            holder << ele 
        end
        holder.to_a
    end
end