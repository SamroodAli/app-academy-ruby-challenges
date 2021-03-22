def partition (arr, num)
  arr1 = []
  arr2 = []
  arr.each do  |ele|
    if ele < num
      arr1 << ele
    else
      arr2 << ele
    end
  end
  [arr1,arr2]
end


def merge(hash1,hash2)
  result ={}
  hash1.each do |k,v|
    result[k] = v
  end
  hash2.each do |k,v|
    result[k]=v
  end
  result
end

def censor(str, arr)
  vowels =["a","e","i","o","u"]
  words = str.split()
  words.each do |word|
    if arr.include?(word)
      vowels.each {|vowel| word.gsub!(vowel,"*")}    
    end
  end
  words.join(" ") 
end
censor("Gosh darn it", ["gosh", "darn", "shoot"])


def power_of_two?(num)
  Math.log(num,2)%1 == 0
end
