def select_even_nums(arr)
  arr.select(&:even?)
end

def reject_puppies(arr)
  arr.reject() {|ele| ele["age"] <= 2}
end

def count_positive_subarrays(arr)
  arr.count {|ele| ele.sum.positive?}
end


def aba_translate(word)
  vowels= "aeiou"
  array = word.split("")
  array.each_with_index do |char, i|
    if vowels.include?(char)
       array[i] = char +"b"+char
    end
  end
  array.join("")
end

def aba_array(arr)
  arr.map {|ele| aba_translate(ele)}
end
