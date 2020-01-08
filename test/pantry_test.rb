require 'minitest/autorun'
require 'minitest/pride'
require './lib/pantry'
require './lib/recipe'
require './lib/ingredient'

class PantryTest < Minitest::Test
  def setup
    @pantry = Pantry.new
    @recipe = Recipe.new("Mac and Cheese")
    
    @ingredient1 = Ingredient.new("Cheese", "C", 100)
    @ingredient2 = Ingredient.new("Macaroni", "oz", 30)
  end
  
  def test_it_exists
    assert_instance_of Pantry, @pantry
  end
  
  def test_it_has_attributes
    expected = {}
    
    assert_equal expected, @pantry.stock
  end
end