itemA = {:item => "photograph", :price => 50, :inventory => 12}
itemB = {item: "postcard", price: 10, inventory: 40}
itemC = {:item => "gift bag", :price => 25, :inventory => 35}

# puts itemA[:item]

# Using Class for Information

class Items
  attr_reader :item, :price
  attr_writer :inventory

  def initialize (input_item, input_price, input_inventory)
    @item = input_item
    @price = input_price
    @inventory = input_inventory
  end

  def print_info
    p @item, @price, @inventory
  end

end

itemA = Items.new("photograph", 50, 12)

itemA.print_info