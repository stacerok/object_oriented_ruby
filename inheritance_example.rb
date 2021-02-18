class Vehicle
  attr_reader :speed, :direction
  attr_writer :turn

  def initialize(hash_options)
    @speed = hash_options[:speed] || 0
    @direction = hash_options[:direction] || "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end


class Car < Vehicle
  attr_reader :make, :model

  def initialize(hash_options)
    super
    @make = hash_options[:make] || "BMW"
    @model = hash_options[:model] || "Stolen"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end


class Bike < Vehicle
  def initialize(hash_options)
    super
    @brand = hash_options[:brand] || "Stolen"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

# bmw = Car.new
# p bmw.turn("left")

 

car = Car.new({make: "BMW"})
p car

# bike = Bike.new
# p bike