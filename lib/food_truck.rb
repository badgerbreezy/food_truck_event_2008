class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    @inventory.count
  end

  def stock(item, amount)
    @inventory[item] = amount
  end
end
