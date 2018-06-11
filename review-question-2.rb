# Finish the implementation of the Car class so it has the functionality described below

class Car

  attr_accessor :make :model

  @@all = []

  def initialize(input_hash)
    @make = input_hash[:make]
    @model = input_hash[:model]

    @@all << self
  end

  def drive
    puts "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end

end

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

BONUS:

Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"
