class Vehicle
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
    puts "El Motor Esta encendido"
  end
end

class Car < Vehicle
  @@counter = 0
  def initialize(model, year)
    super(model, year)
    @@counter += 1
  end

  def self.counter
    @@counter
  end
end

car1 = Car.new("Opel", "1999")
car2 = Car.new("Nissan", "2999")
puts Car.counter
puts car2.engine_start
