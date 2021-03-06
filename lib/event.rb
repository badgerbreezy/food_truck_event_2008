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

  def sorted_item_list
    sorted_items = @food_trucks.map do |food_truck|
      food_truck.inventory.keys
    end
    sorted_array = sorted_items.flatten
    list = sorted_array.map do |item|
      item.name
    end
    list.sort.uniq
  end

  def total_inventory
    new_hash = {}
    new_hash[item]
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |item, quantity|
        if item == sorted_item_list
          new_hash[item] = quanitity
        end
      end
    end
    new_hash
  end


end
