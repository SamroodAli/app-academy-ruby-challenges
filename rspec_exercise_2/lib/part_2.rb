def palindrome?(str)
  reverse = ""
  str.each_char do |char|
    reverse = char + reverse
  end
  str == reverse
end


def substrings(string)
  result = []
  string.each_char.with_index do | char, i |
    (i..string.length-1).each do | j |
      result << string[i..j]
    end
  end
  result
end

def palindrome_substrings(str)
  result = []
  subs = substrings(str)
  subs.each do |sub|
    if sub.length > 1 && palindrome?(sub)
      result << sub
    end
  end
  result
end
