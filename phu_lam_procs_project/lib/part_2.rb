#_______________________________________________________________________________
# Part 2 
# 1 

def reverser(str, &prc)
    prc.call(str.reverse)
end

#_______________________________________________________________________________
# 2 

def word_changer(str, &prc)
    new_words = str.split(" ")

    new_words = new_words.map { |word| prc.call(word) }

    new_words.join(" ")
end

#_______________________________________________________________________________
# 3

def greater_proc_value(num, prc1, prc2)
    result1 = prc1.call(num)
    result2 = prc2.call(num)

    return result1 if result1 >= result2
    result2
end

#_______________________________________________________________________________
# 4

def and_selector(arr, prc1, prc2)
    new_arr = []

    arr.each { |ele| new_arr << ele if prc1.call(ele) == true && prc2.call(ele) == true }

    new_arr
end

#_______________________________________________________________________________
# 5 

def alternating_mapper(arr, prc1, prc2)
    new_arr = []

    arr.each_with_index do |ele, idx|
        if idx.even?
            new_arr << prc1.call(ele)
        else
            new_arr << prc2.call(ele)

        end
    end

    new_arr
end

# FINISHED