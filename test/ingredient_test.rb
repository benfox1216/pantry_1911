require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test
  def setup
    @ingredient = Ingredient.new("Cheese", "oz", 50)
  end
  
  def test_it_exists
    
  end
end