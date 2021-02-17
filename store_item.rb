# itemA = {:item => "photograph", :price => 50, :inventory => 12}
# itemB = {item: "postcard", price: 10, inventory: 40}
# itemC = {:item => "gift bag", :price => 25, :inventory => 35}

# puts itemA[:item]

# Using Class for Information

class Items
  attr_reader :item, :price
  attr_writer :inventory

  def initialize (input_options)
    @item = input_options[:input_item]
    @price = input_options[:input_price]
    @inventory = input_options[:input_inventory]
  end

  def print_info
    p @item, @price, @inventory
  end

end

itemA = Items.new({input_item: "photograph", input_price: 50, input_inventory: 12})

itemA.print_info

