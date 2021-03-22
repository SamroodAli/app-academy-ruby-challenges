def average(num1,num2)
  (num1+num2)/2.0
end

def average_array(arr)
  return arr.sum.to_f/arr.length
end

def repeat(str,arg)
  return str*arg
end

def yell(str)
  return str.upcase + "!"
end

def alternating_case(str)
  arr = str.split()
  return arr.map.with_index do |ele, i|
    if i.odd?
      ele.downcase
    else
      ele.upcase
    end
  end.join(" ")
end
