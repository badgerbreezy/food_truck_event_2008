class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    food_truck_names = @food_trucks.map do |food_truck|
      food_truck.name
    end
    food_truck_names
  end

  def food_trucks_that_sell(item)
    trucks_with_item = []
    @food_trucks.each do |food_truck|
      if food_truck.inventory.include?(item)
        trucks_with_item << food_truck
      end
    end
    trucks_with_item
  end

  def total_inventory
    new_hash = {}
    # new_hash[item] = 0
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |item, quantity|
        new_hash[item] += quantity
      end
    end
    new_hash
  end


end
