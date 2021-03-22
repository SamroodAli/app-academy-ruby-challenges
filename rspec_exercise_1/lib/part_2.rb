# def hipsterfy(word)
#   
# end

def hipsterfy(str)
  vowels = "aeiou"
  (str.length-1).downto(0) do |i|
    if vowels.include?(str[i])
      str[i]=""
      break
    end
  end
 str
end

def vowel_counts(str)
  str.downcase!
  vowels = "aeiou"
  hash = Hash.new(0)
  str.each_char do |char|
    if vowels.include?(char)
      hash[char] += 1
    end
  end
  return hash
end

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  str.each_char.with_index do |char,i|
    if alphabet.include?(char)
      next_index = (alphabet.index(char) + num) % alphabet.length
      str[i] = alphabet[next_index]
    end
  end
  str
end

