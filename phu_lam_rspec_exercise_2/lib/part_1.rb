def partition(arr, num)
  big_arr = []
  small_arr = []

  arr.each do |ele|
    if ele >= num
      big_arr << ele
    else
      small_arr << ele
    end
  end
  [small_arr, big_arr]
end
#______________________________________________________________________________

def merge(hash_1, hash_2)
  new_hash = Hash.new()

  hash_1.each { |key, val| new_hash[key] = val }
  hash_2.each { |key, val| new_hash[key] = val }

  new_hash
end
#______________________________________________________________________________

def censor(sentence, words)
  new_sentence = sentence.split(" ")

  new_sentence.each_with_index do |word, index|
    if words.include?(word.downcase)
      new_sentence[index] = ""
      word.each_char do |char|
        if "ueoai".include?(char.downcase)
          new_sentence[index] += "*"
        else
          new_sentence[index] += char
        end
      end
    end
  end
  new_sentence.join(" ")
end
#______________________________________________________________________________

def power_of_two?(num)
  test_num = 1
  if num == 1
    return true
  end

  while test_num < num
    test_num *= 2
  end

  test_num == num
end
# FINISHED
