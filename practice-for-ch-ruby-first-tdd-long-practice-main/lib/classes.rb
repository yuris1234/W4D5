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
        hash = Hash.new(nil)
        self.each_with_index do |ele, i|
            diff = -1 * ele 
            key = hash[diff]
            if key == nil 
                hash[ele] = i 
            else
                holder << [hash[diff], i]
            end
        end
        holder.sort
    end
end