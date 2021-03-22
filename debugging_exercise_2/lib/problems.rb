# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"

def largest_prime_factor(num)
  largest_prime = 0
  (0..num).each do |i|
    prime = is_prime?(i)
    if prime && num % i==0 && i > largest_prime
      largest_prime = i
    end
  end
  return largest_prime == 0 ? nil : largest_prime
end

def is_prime?(n)
  return false if n < 2
  (2...n).each do |i|
    return false if n % i == 0 
  end
  return true
end


def unique_chars?(string)
  hash = Hash.new(0)
  string.each_char do |char|
    hash[char] +=1
    if hash[char] > 1
      return false
    end
  end
  true
end


def dupe_indices(arr)
  hash = Hash.new() {Array.new()}
  arr.each_with_index do |el, i|
    if arr.count(el) > 1
    temp = hash[el]
    temp << i
    hash[el] = temp
    end
  end
  hash
end

def ana_array(arr1,arr2)
  return false if arr1.length != arr2.length
  arr1.each {|ele| return false if !arr2.include?(ele)}
  arr2.each {|ele| return false if !arr1.include?(ele)}
  return true
end
