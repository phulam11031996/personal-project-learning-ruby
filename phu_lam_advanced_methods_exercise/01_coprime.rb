# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.
#_______________________________________________________________________________________

def coprime?(num_1, num_2)
    num_1_divisor = []
    num_2_divisor = []
    
    # find all the divisors of num_1
    (2..num_1).each do |num|            
        if num_1 % num == 0
            num_1_divisor << num
        end
    end

    # find all the divisors of num_2
    (2..num_2).each do |num|
        if num_2 % num == 0
            num_2_divisor  << num
        end
    end
    
    # check if both of the of the arrays have the same element
    !num_1_divisor.any? { |num| num_2_divisor.include?(num) }

end



#_______________________________________________________________________________________

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
