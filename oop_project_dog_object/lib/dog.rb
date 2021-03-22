class Dog
  def initialize(name,breed,age,bark,favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  #getters
  def name 
    @name
  end

  def breed
    @breed
  end

  def age
    @age
  end

  def favorite_foods
    @favorite_foods
  end

  #setters
  def age=(new_age)
    @age = new_age
  end

  #other methods
  def bark
    @age > 3 ? @bark.upcase : @bark.downcase
  end
  
  def favorite_food?(string)
    temp = @favorite_foods.map {|el| el.downcase}
    temp.include?(string.downcase)
  end
end
