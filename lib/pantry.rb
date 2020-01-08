class Pantry
  attr_reader :stock
  
  def initialize
    @stock = {}
  end
  
  def restock(ingredient, amount)
    if @stock.include?(ingredient) == false
      @stock[ingredient] = amount
    else
      @stock[ingredient] += amount
    end
  end
  
  def stock_check(ingredient)
    if @stock.include?(ingredient) == false
      0
    else
      @stock[ingredient]
    end
  end
  
  def enough_ingredients_for?(recipe)
    
    recipe.ingredients_required.each do |ingredient|
      if stock_check(ingredient[0]) < ingredient[1]
        return false
      end
    end

    true
  end
end