# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
# Part 1
    # 1
    def span
        if self.empty?
            nil
        else 
            return self.max - self.min
        end
    end

    # 2
    def average
        if self.empty?
            nil
        else
            return self.sum * 1.0 / self.length
        end
    end
    
    # 3
    def median
        sort_arr = self.sort

        if self.empty?
            return nil

        elsif self.length.odd?
            mid_idx = self.length / 2
            return sort_arr[mid_idx]

        else self.length.even?
            mid_arr = []
            mid_arr << sort_arr[self.length / 2 - 1]
            mid_arr << sort_arr[self.length / 2]
            return mid_arr.average
        end
    end

    # 4
    def counts
        hash_count = Hash.new(0)

        self.each do |ele|
            hash_count[ele] += 1 
        end

        hash_count
    end

# Part 2
    # 1
    def my_count(ele)
        count = 0

        self.each { |val| count += 1 if val == ele }

         count 
    end

    # 2
    def my_index(ele)
        self.each_with_index { |val, idx| return idx if val == ele }

        nil
    end

    # 3
    def my_uniq()
        uniq_arr = []
        self.each do |val|
            if !uniq_arr.include?(val)
                uniq_arr << val
            end
        end
        uniq_arr
    end

    # 4
    def my_transpose()
        transpose_arr = []

        self.each_with_index do |val1, idx1|
            temp_arr = []
            self.each_with_index do |val2, idx2|
                temp_arr << self[idx2][idx1]
            end
            transpose_arr << temp_arr
        end

        transpose_arr
    end

end

# FINISHED