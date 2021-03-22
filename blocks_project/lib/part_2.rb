def all_words_capitalized?(arr)
  arr.all? { |ele| ele.capitalize ==ele }
end

def no_valid_url?(arr)
  urls = ['com', 'net', 'io','org']
  arr.none? do |ele|
    after_dot = ele.partition('.')[2]
    urls.include?(after_dot)
  end
end

def any_passing_students?(arr)
  arr.any? {|ele| (ele[:grades].sum)/(ele[:grades].length) >=75}
end
