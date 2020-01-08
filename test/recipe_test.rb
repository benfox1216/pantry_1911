require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'

class RecipeTest < Minitest::Test
  def setup
    @recipe = Recipe.new("Mac and Cheese")
  end
  
  def test_it_exists
    assert_instance_of Recipe, @recipe
  end
  
  def test_it_has_attributes
    assert_equal "Mac and Cheese", @ingredient.name
  end