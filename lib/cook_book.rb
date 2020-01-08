class CookBook
  attr_reader :summary
  
  def initialize
    @summary = []
  end
  
  def add_recipe(recipe)
    @summary << recipe
  end
end