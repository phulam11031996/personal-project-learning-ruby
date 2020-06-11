# Part 1:

#______________________________________________________________________________

def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end
#______________________________________________________________________________

def average_array(arr)
  (arr.sum * 1.0) / arr.length
end
#______________________________________________________________________________

def repeat(str, num)
  str * num
end
#______________________________________________________________________________

def yell(str)
  str.upcase + "!"
end
#______________________________________________________________________________

def alternating_case(str)
  split_string = str.split
  new_string = split_string.map.with_index do |word, index|
    if index.even?
      word.upcase
    else
      word.downcase
    end
  end
  new_string.join(" ")
end
