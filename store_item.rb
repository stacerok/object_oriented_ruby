# itemA = {:item => "photograph", :price => 50, :inventory => 12}
# itemB = {item: "postcard", price: 10, inventory: 40}
# itemC = {:item => "gift bag", :price => 25, :inventory => 35}

# puts itemA[:item]

# Using Class for Information

class Items
  attr_reader :item, :price
  attr_writer :inventory

  def initialize (input_options)
    @item = input_options[:item]
    @price = input_options[:price]
    @inventory = input_options[:inventory]
  end

  def print_info
    p @item, @price, @inventory
  end

end


class Food
  

itemA = Items.new({item: "photograph", price: 50, inventory: 12})
itemB = Items.new({item: "gift bag", price: 25, inventory: 45})

itemA.print_info
itemB.print_info


