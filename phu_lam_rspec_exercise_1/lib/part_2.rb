# Part 2:

#______________________________________________________________________________

def hipsterfy(word)
  index = word.length - 1
  while index >= 0
    if "ueoai".include?(word[index])
      return word[0...index] + word[index + 1..-1]
    end
    index -= 1
  end
  word
end
#______________________________________________________________________________

def vowel_counts(str)
  hash = Hash.new(0)

  str.each_char do |char|
    if "ueoai".include?(char.downcase)
      hash[char.downcase] += 1
    end
  end
  hash
end
#______________________________________________________________________________

def caesar_cipher(message, n)
  alphabet = ("a".."z").to_a
  new_string = ""

  message.each_char.with_index do |char|
    if alphabet.include?(char)
      old_index = alphabet.index(char)
      new_index = (old_index + n) % 26
      new_string += alphabet[new_index]
    else
      new_string += char
    end
  end
  new_string
end
