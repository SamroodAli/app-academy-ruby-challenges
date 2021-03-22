# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)

def is_sorted(arr)
  new_arr = arr.map { |el|  el }
  return new_arr == bubble_sort(arr)
end

def bubble_sort(arr)
  is_sorted = false
  while !is_sorted
    is_sorted =true
    (0...arr.length-1).each do |i|
      if arr[i] > arr[i+1]
          arr[i], arr[i+1] =  arr[i+1], arr[i]
          is_sorted = false
      end
    end
  end
 return arr
end


p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
