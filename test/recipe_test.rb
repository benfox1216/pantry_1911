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
end