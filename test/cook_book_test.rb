require 'minitest/autorun'
require 'minitest/pride'
require './lib/cook_book'
require './lib/recipe'
require './lib/ingredient'

class CookBookTest < Minitest::Test
  def setup
    @cookbook = CookBook.new
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Burger")
    
    @ingredient1 = Ingredient.new("Cheese", "C", 100)
    @ingredient2 = Ingredient.new("Macaroni", "oz", 30)
    @ingredient3 = Ingredient.new("Ground Beef", "oz", 100)
    @ingredient4 = Ingredient.new("Bun", "g", 1)
    
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient2, 8)
    
    @recipe2.add_ingredient(@ingredient3, 4)
    @recipe2.add_ingredient(@ingredient4, 100)
  end
  
  def test_it_exists
    assert_instance_of CookBook, @cookbook
  end
  
  def test_it_has_attributes
    assert_equal [], @cookbook.summary
  end
  
  def test_it_can_add_recipes_to_summary
    skip
    @cookbook.add_recipe(@recipe1)
    @cookbook.add_recipe(@recipe1)
    
    #assert_equal @cookbook.summary
  end
end