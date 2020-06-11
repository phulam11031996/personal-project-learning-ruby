#_______________________________________________________________________________
# Part 1
# 1

def select_even_nums(arr)
    arr.select(&:even?)
end

#_______________________________________________________________________________
# 2

def reject_puppies(dog_hash)
    dog_hash.reject { |hash| hash["age"] <= 2 }
end

#_______________________________________________________________________________
# 3

def count_positive_subarrays(twod_arr)
    twod_arr.count { |arr| arr.sum.positive? }
end

#_______________________________________________________________________________
# 4

def aba_translate(word)
    translate_word = ""
    word.each_char do |char|
        if "ueoai".include?(char)
            translate_word += char + "b" + char
        else
            translate_word += char
        end
    end
    translate_word
end

#_______________________________________________________________________________
# 5

def aba_array(arr_word)
    arr_word.map { |word| aba_translate(word) }
end

# FINISHED