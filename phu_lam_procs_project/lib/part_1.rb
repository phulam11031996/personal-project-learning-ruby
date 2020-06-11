#_______________________________________________________________________________
# Part 1
# 1

def my_map(arr, &prc)
    new_arr = []

    arr.each { |ele| new_arr << prc.call(ele) }

    new_arr
end

#_______________________________________________________________________________
# 2 

def my_select(arr, &prc)
    new_arr = []

    arr.each { |ele| new_arr << ele if prc.call(ele) == true }

    new_arr
end

#_______________________________________________________________________________
# 3

def my_count(arr, &prc)
    count = 0

    arr.each { |ele| count += 1 if prc.call(ele) == true }

    count
end

#_______________________________________________________________________________
# 4 

def my_any?(arr, &prc)
    arr.each { |ele| return true if prc.call(ele) == true }
    false
end

#_______________________________________________________________________________
# 5 

def my_all?(arr, &prc)
    arr.each { |ele| return false if prc.call(ele) == false }
    true
end

#_______________________________________________________________________________
# 6 

def my_none?(arr, &prc)
    arr.each { |ele| return false if prc.call(ele) == true }
    true
end
# FINISHED