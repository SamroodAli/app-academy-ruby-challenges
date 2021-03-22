require "byebug"

# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.empty?
    max = self.max
    min = self.min
    max-min
  end

  def average
    return nil if self.empty?
    self.sum/self.length.to_f
  end

  def median
    return nil if self.empty?
    sorted = self.sort
    if sorted.length.odd?
      return sorted[sorted.length/2]
    else
      average = (sorted[(sorted.length/2)-1]+sorted[sorted.length/2])/2.to_f
      return average
    end
  end


  def counts
    hash= Hash.new(0)
    self.each {|el| hash[el]+=1}
    hash
  end

  def my_count(char)
    return nil if self.empty?
    count = 0
    self.each{|el| count +=1 if el==char}
    count
  end

  def my_index(char)
    self.each_with_index do |el,index|
      return index if el ==char
    end
    return nil
  end

  def my_uniq
    unique = []
    self.each {|el| unique << el if !unique.include?(el) }
    unique
  end

  def my_transpose
    result = []
    self.length.times do |i|
      temp = []
      self.length.times do |j|
        temp << self[j][i]
      end
      result << temp
    end
    result
  end

end
