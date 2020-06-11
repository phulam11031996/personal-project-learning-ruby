# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.
#___________________________________________________________________________________________

def max_inject(*arr)    # *arr parameter accept any amount of number of arguments in the form of array

    arr.inject do |acc, num|
        if acc < num
            num
        else
            acc
        end
    end
end

#___________________________________________________________________________________________

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30
