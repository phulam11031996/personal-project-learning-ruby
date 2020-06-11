def palindrome?(string)
  string.each_char.with_index do |char, index|
    if string[index] != string[-index - 1]
      return false
    end
  end
  true
end

p palindrome?("tot")
#______________________________________________________________________________

def substrings(string)
  arr_substrings = []

  string.each_char.with_index do |char, index|
    iteration = string.length - index
    counter = 0
    iteration.times do
      arr_substrings << string[index..index + counter]
      counter += 1
    end
  end
  arr_substrings
end
#______________________________________________________________________________

def palindrome_substrings(string)
  substrings(string).select { |substring| palindrome?(substring) == true && substring.length >= 3}
end
# FINISHED
