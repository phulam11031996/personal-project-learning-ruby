# Write a method, filter_lengths(strings, length), that accepts an array of strings
# and a length as args. The method should return an array containing the strings
# that have at least the given length. The length argument should be optional; if no length
# is passed in, then 5 should be used as the length.
#_______________________________________________________________________________________

def filter_lengths(strings, length = 5)     # make 'length = 5' to bbe the defauft value
    new_arr = []

    # append to the new_arr if the length of string is longer than the assigned value
    strings.each do |string|
        if string.length >= length 
            new_arr << string
        end
    end

    new_arr
end
#_______________________________________________________________________________________


p filter_lengths(["pear", "dragonfruit", "fig", "clementine"], 4)   # => ["pear", "dragonfruit", "clementine"]
p filter_lengths(["pear", "dragonfruit", "fig", "clementine"])      # => ["dragonfruit", "clementine"]
p filter_lengths(["cat", "dog", "capybara", "mouse"], 7)            # => ["capybara"]
p filter_lengths(["cat", "dog", "capybara", "mouse"])               # => ["capybara", "mouse"]
