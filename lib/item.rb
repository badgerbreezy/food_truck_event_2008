class Item
  attr_reader :name, :price
  def initialize(traits)
    @name = traits[:name]
    @price = traits[:price].gsub('$',' ').to_f
  end
end
