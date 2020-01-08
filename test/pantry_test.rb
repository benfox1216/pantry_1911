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
  
  def test_it_can_restock
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    expected = {@ingredient1 => 15}

    assert_equal expected, @pantry.stock
  end
  
  def test_it_can_check_stock
    assert_equal 0, @pantry.stock_check(@ingredient1)
    
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    
    assert_equal 15, @pantry.stock_check(@ingredient1)
  end
  
  def test_it_can_verify_there_are_enough_ingredients
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
    @pantry.restock(@ingredient1, 5)
    
    assert_equal false, @pantry.enough_ingredients_for?(@recipe)
    
    @pantry.restock(@ingredient2, 7)
    
    assert_equal false, @pantry.enough_ingredients_for?(@recipe)
    
    @pantry.restock(@ingredient2, 1)
  
    assert_equal true, @pantry.enough_ingredients_for?(@recipe)
  end
end