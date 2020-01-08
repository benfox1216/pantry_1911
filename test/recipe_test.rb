require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/ingredient'

class RecipeTest < Minitest::Test
  def setup
    @recipe = Recipe.new("Mac and Cheese")
    
    @ingredient1 = Ingredient.new("Cheese", "C", 100)
    @ingredient2 = Ingredient.new("Macaroni", "oz", 30)
  end
  
  def test_it_exists
    assert_instance_of Recipe, @recipe
  end
  
  def test_it_has_attributes
    expected = {}
    
    assert_equal "Mac and Cheese", @recipe.name
    assert_equal expected, @recipe.ingredients_required
  end
  
  def test_it_can_add_ingredients
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
    expected = {@ingredient1 => 2, @ingredient2 => 8}
    
    assert_equal expected, @recipe.ingredients_required
    assert_equal [@ingredient1, @ingredient2], @recipe.ingredients
  end
  
  def test_it_can_determine_amount_of_ingredients_required
    @recipe.add_ingredient(@ingredient1, 2)
    
    assert_equal 2, @recipe.amount_required(@ingredient1)
  end
  
  def test_it_can_calculate_total_calories
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
    
    assert_equal 440, @recipe.total_calories
  end
end