def reverser(string, &prc)
  string.reverse!
  prc.call(string)
end

def word_changer(sentence, &prc)
  sentence.split().map { |el| prc.call(el)}.join(" ")
end

def greater_proc_value(num, prc1, prc2)
  result1 = prc1.call(num)
  result2 = prc2.call(num)
  result1 > result2 ? result1 : result2
end


def and_selector(arr,prc1,prc2)
  arr.select {|el| prc1.call(el)&& prc2.call(el)}
end

def alternating_mapper(arr,prc1,prc2)
  arr.map.with_index do |el,i|
    if i.even?
      prc1.call(el)
    else
      prc2.call(el)
    end
  end  
end
