# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
#_______________________________________________________________________________
# 1
def largest_prime_factor(num)
    num.downto(2) do |factor|
        if num % factor == 0 && is_prime?(factor)
            return factor
        end
    end
end

def is_prime?(num)
    return false if num < 2
    
    (2...num).none? { |i| num % i == 0 }
end

#_______________________________________________________________________________
# 2
def unique_chars?(str)
    hash = Hash.new(0)

    str.each_char do |char|
        hash[char] += 1
        if hash[char] == 2
            return false
        end
    end
    true
end

#_______________________________________________________________________________
# 3

def dupe_indices(arr)
    indices = Hash.new { |h, v| h[v] = [] }

    arr.each_with_index do |ele, i|
        indices[ele] << i
    end

    indices.select { |key, arr| arr.length > 1 }
end 

#_______________________________________________________________________________
# 4

def ana_array(arr_1, arr_2)
    count_ele(arr_1) == count_ele(arr_2)
end

def count_ele(arr)
    count = Hash.new(0)

    arr.each { |ele| count[ele] += 1 }

    count
end

#FINISHED










