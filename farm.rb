class Farm

  def initialize
    @total_amount_of_food = []
  end

  def add(field)
    @total_amount_of_food << field
  end

  def total_food
    total=0
      @total_amount_of_food.each do |field|
        total+= field.square
      end
      return total
  end

end

class Type

  def initialize(food_per_hectare)
    @food_per_hectare= food_per_hectare
  end

  def food_per_hectare(food)
    @food_per_hectare = food
  end

end



class Field < Type # Took me a while to understand this

  def initialize(type, total_area, food_per_hectare)
    super(food_per_hectare)
    @type = type
    @total_area = total_area
  end

  # Reader
  def total_area
    @total_area
  end

  # Writer
  def total_area=(food)
    @total_area = food
  end

  def square
    swuare = total_area * food_per_hectare
    return square
  end
end

p benjamin_farm = Farm.new
puts "---------------------"
p corn = Field.new("corn",100,20)
p wheat = Field.new("Wheat",200, 30)
puts "---------------------"
p benjamin_farm.add(corn)
p benjamin_farm.add(wheat)
puts "---------------------"
p benjamin_farm.inspect
p benjamin_farm.total_food
