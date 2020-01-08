require 'minitest/autorun'
require 'minitest/pride'
require './lib/cook_book'
require './lib/pantry'
require './lib/recipe'
require './lib/ingredient'

class CookBookTest < Minitest::Test
  def setup
    @cookbook = CookBook.new
    @pantry = Pantry.new
    @recipe = Recipe.new("Mac and Cheese")
    
    @ingredient1 = Ingredient.new("Cheese", "C", 100)
    @ingredient2 = Ingredient.new("Macaroni", "oz", 30)
  end
  
  def test_it_exists
    assert_instance_of CookBook, @cookbook
  end
  
  def test_it_has_attributes
    skip
  end
end