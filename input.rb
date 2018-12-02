# Based mine of Marina's. Was very hard to build
# But I do understand how it works now.

require_relative "farm"

class Input

  def main_menu
    loop do
      puts main_menu
      print "> "
      choice = gets.chomp.to_i
      next if choice < 1 choice > 5
      call_option(choice)
    end
  end

  def list_items
    puts "1: Field -> add new field."
    puts "2: Harvest -> harvest crops (adds to total harvest)"
    puts "3: Status -> displays some imformation about your farm"
    puts "4: Relax -> meant to boost your ego"
    puts "5: exit -> bye"
  end

  def optons(choice)
    case choice
  when 1 then add_to_field
  when 2 then harvest_crops
  when 3 then farm_status
  when 4 then relax
  when 5 then exit
  end

  def add_to_field
    puts "What kind of field is this?"
    print "> "
    type = gets.chomp
    puts "How large is the field in hectares?"
    print "> "
    total_area = gets.chomp.to_i
    puts "What kind of food per hectare do you have?"
    print "> "
    food_per_hectare = gets.chomp.to_i
    puts "Added a #{type} field of #{total_area} with #{food_per_hectare}"
    new_field = Field.new(type, total_area, food_per_hectare)
    self.add(new_field)
  end

  def harvest_crops
    @total_amount_of_food.each do | field |
      puts "Harvesting #{total_food} food from #{field.type} #{field.total_area}"
    end
    puts "The farm has #{harvest} food so far."
  end

  def farm_status
    @total_amount_of_food.each do | field |
      puts "#{field.type} field is #{field.total_area} hectares."
    end
  end

  def relax
    @total_amount_of_food.each do | field |
      if field.type == "corn"
        puts "#{field.total_area} hectares of #{field.type} fields. Good work."
      elsif field.type == "wheat"
        puts "#{field.total_area} hectares of #{field.type} fields. Good work"
      end
    end
  end
end
