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
    
  end
end