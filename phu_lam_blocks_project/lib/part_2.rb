#_______________________________________________________________________________
# Part 2
# 1

def all_words_capitalized?(arr_word)
    arr_word.all? { |word| word == word.capitalize }
end

#_______________________________________________________________________________
# 2

def no_valid_url?(arr_url)
    arr_url.none? { |url| url.end_with?('.com', '.net', '.io', '.org')}

end

#_______________________________________________________________________________
# 3

def any_passing_students?(arr_hash)
    arr_hash.any? { |hash| (hash[:grades].sum / hash[:grades].length) >= 75 }
end

#FINISHED