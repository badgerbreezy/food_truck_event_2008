class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, amount)
    @inventory[item] += amount
  end

  def potential_revenue
    revenue = []
    @inventory.keys.each do |key|
      @inventory.values.each do |value|
        revenue << key.price * value
      end
    end
    revenue.delete_at(1)
    revenue.delete_at(1)
    revenue.sum
  end


end
