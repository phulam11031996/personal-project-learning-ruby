# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.
#____________________________________________________________________________________________________

def peak_finder(arr)
    peak_arr = []
    
    # check if the front is a peak
    if arr[0] > arr[1]
        peak_arr << arr[0]
    end

    # check a; the peak in the middle
    (1...arr.length - 1).each do |index|
        if arr[index] > arr[index - 1] && arr[index] > arr[index + 1]
            peak_arr << arr[index]
        end
    end

    #check if the back is a peak
    if arr[-1] > arr[-2]
        peak_arr << arr[-1]
    end

    peak_arr
end

#____________________________________________________________________________________________________

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
