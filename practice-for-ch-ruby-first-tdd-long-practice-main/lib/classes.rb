require "set"
require "byebug"

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

    def my_transpose
        holder = []
        
        self.each_with_index do |row, row_index|
            row_holder = []
            row.each_with_index do |col, col_index|
                row_holder << self[col_index][row_index]
            end

            holder << row_holder
        end
        
        holder
    end

    def stock_picker
        current_diff = 0
        largest_diff = 0
        holder = []

        self.each_with_index do |price_1, i|
            self.each_with_index do |price_2, j|
                if j > i 
                    current_diff = price_2 - price_1 
                    if current_diff > largest_diff
                        largest_diff = current_diff
                        holder << [i, j]
                    end
                end
            end
        end

        holder[-1]
    end
end